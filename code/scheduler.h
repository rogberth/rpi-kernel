#ifndef __SCHEDULER_H_
#define __SCHEDULER_H_


#include "kpcb.h"
#include "process.h"
#include "console.h"

/*
 * Funciones externas
 */
extern "C" void armLoadContext();
extern "C" void armPrepareContext();
using namespace RaspberryLib;

/*
 * Stack pointer del scheduler.
 */


/*
 * Variable global para guardar el stack pointer del proceso interrumpido
 */
uint32 stackPointer = 0;
uint32 globalSPkernel = 0;
uint32 globalPCkernel = 0;
uint32 globalaux3 = 0;

uint32 globaltimecont = 0;
bool globalTaskEnd = false;

class Scheduler {



	public:

		Scheduler(Console *ptrconsole){
			timeslice =500;


			this->pconsole = ptrconsole;
			//this->numProcess = 0;

			pidcount = 1000;


			this->pBlock = 0;


			totalquantums = 0;
			totaltime = 0;

			taskqueue = 0;

		}

		void main();

		void LoadContext();
		void Schedule();
		void AddTask();
		void PrepareTask();

		//Función externa

		/*
		 * Variable que servirá para dar el valor PID a los procesos y PCB
		 */
		uint32 pidcount;
		//Contador de quantums
		uint32 totalquantums;
		//Contador de tiempo total de ejecución de procesos
		uint32 totaltime;
		//Quantum para round robin y similares
		uint32 timeslice;
		uint32 conttime;
		PCBlock * pbnewtask;
		//Puntero a pcb actual
		PCBlock * pBlock;
		//Consola asociada
		Console * pconsole;
		//Número de procesos
		//uint32 numProcess;

		TaskQueue * taskqueue;


		//Puntero a la cola de procesos
		//TaskQueue *taskqueue;



};


#endif
