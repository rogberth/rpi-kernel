/*
 * Bloque de control de proceso
 * Cada instancia de esta clase contendr� informaci�n de un proceso asociado
 *
 */
#ifndef __KPCB_H_
#define __KPCB_H_

#include "common.h"
#include "math.h"
#include "raspberrylib.h"
#include "gpu2d.h"

enum State {CREATED,RUNNING,WAITING,BLOCKED,TERMINATED};

//Puntero a procedimiento void sin argumentos para hacer callback.
typedef void (*ProcessCB)(void);

const uint32 stackDistance = 0x800;

uint32 baseStack = 0x4000;

/*
 * Distancia entre stacks de procesos:
 * 0x100 significa que hay 256 bytes o
 * 64 words de espacio entre pila y pila.
 */


class PCBlock{
	public:

		PCBlock(uint32 newpid, ProcessCB newprocess){
			pid = newpid;
			process = newprocess;
			sInitReserved = baseStack;
			sInit = sInitReserved-(4*17);
			baseStack = baseStack-stackDistance;
			sp = sInit;

			lastpc = 0;

			priority = 0;

			state = CREATED;

			next = 0;
		}

	//Puntero al siguiente PCBlock para las colas de prioridad
	PCBlock * next;

	//Puntero a la direcci�n main del proceso asociado
	ProcessCB process;

	//Direcci�n inicial de pila reservada
	uint32 sInitReserved;
	//Direcci�n inicial de la pila (a partir de la posici�n siguiente a la �ltima reservada)
	uint32 sInit;
	//Stack pointer
	uint32 sp;
	//Direcci�n inicial del proceso
	uint32 lastpc;


	//Process ID
	uint16 pid;

	//Prioridad
	uint16 priority;
	//Estado del proceso
	State state;

};




class TaskQueue{
public:

	PCBlock * first;
	Console * pconsole;
	TaskQueue(Console *p){
		pconsole = p;
		first = 0;
	}

	void Push(PCBlock * newItem){
		PCBlock * auxp;
		newItem->next = 0;
		//Ya hay elementos
		if(!isEmpty()){
			auxp = first;
			while(auxp->next != 0){
				auxp = auxp->next;
			}
			auxp->next = newItem;
		}else{//No hab�a elementos
			first = newItem;
		}

	}

	PCBlock * Pop(){
		if(!isEmpty()){
			PCBlock * auxp;
			auxp = first;
			if(first->next == 0){
				first = 0;
			}else{
				first = first->next;
			}
			return auxp;
		}else{
			return 0;
		}
	}

	bool isEmpty(){
		if (first == 0){
			return true;
		}else return false;
	}
};

#endif
