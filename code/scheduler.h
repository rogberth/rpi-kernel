#ifndef __SCHEDULER_H_
#define __SCHEDULER_H_

#include "gpu2d.h"
#include "kpcb.h"
#include "process.cpp"
#include "console.h"

/*
 * Funciones externas
 */
extern "C" void armLoadContext();

#define SPECIALMEM 0xD000

using namespace RaspberryLib;

/*
 * Stack pointer del scheduler.
 */
//const uint32 spScheduler = 0x8000;


/*
 * Variable global para guardar el stack pointer del proceso interrumpido
 */
uint32 stackPointer = 0;
uint32 globalSPkernel = 0;
uint32 globalPCkernel = 0;
uint32 globalaux3 = 0;

uint32 globaltimecont = 0;


class Scheduler {



	public:

		Scheduler(Console *ptrconsole){
			this->pconsole = ptrconsole;
			//this->numProcess = 0;

			pidcount = 1000;

			timeslice = 2000;
			this->pBlock = 0;
		}

		void main();

		void LoadContext();
		void Schedule();
		void RunNext();

		//Función externa

		/*
		 * Variable que servirá para dar el valor PID a los procesos y PCB
		 */
		uint32 pidcount;

		uint32 timeslice;


		//Puntero a pcb actual
		PCBlock * pBlock;
		//Consola asociada
		Console * pconsole;
		//Número de procesos
		//uint32 numProcess;


		//Puntero a la cola de procesos
		TaskQueue *taskqueue;



};


#endif
