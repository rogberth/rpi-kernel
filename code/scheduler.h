#ifndef __SCHEDULER_H_
#define __SCHEDULER_H_


#include "kpcb.h"
#include "process.h"
#include "console.h"


using namespace RaspberryLib;

/*
 * Funciones externas
 */
extern "C" void armLoadContext();


/*
 * Variable global para guardar el stack pointer del proceso interrumpido
 */
uint32 stackPointer = 0;
uint32 globalSPkernel = 0;
uint32 globalaux = 0;


class Scheduler {

	public:

		Scheduler(Console *ptrconsole){
			//Variables importantes sobre los procesos
			timeslice = 500;
			pidcount = 1000;

			//Puntero a consola
			pconsole = ptrconsole;


			//Estadísticas
			totalquantums = 0;
			totaltime = 0;

			//La cola de procesos de momento está vacía
			taskqueue = 0;

			//El proceso nuevo de momento no existe
			pbnewtask = 0;

			//El PCB actual de momento no existe.
			pBlock = 0;

		}

		void main();
		void LoadContext();
		void Schedule();
		void AddTask();

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

		PCBlock * pbnewtask;
		//Puntero a pcb actual
		PCBlock * pBlock;
		//Consola asociada
		Console * pconsole;

		//Puntero a la cola de procesos (cola de PCBs)
		TaskQueue * taskqueue;



};


#endif
