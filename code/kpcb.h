// *******************************
// FILE: 		kpcb.h
// AUTHOR:		Roberto Curran García
// DATE:		2015-05-05
// ABOUT:		Here is the PCB class and the TaskQueue class defined
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************

/*
 * Bloque de control de proceso
 * Cada instancia de esta clase contendrá información de un proceso asociado
 *
 */
#ifndef __KPCB_H_
#define __KPCB_H_


#include "raspberrylib.h"
using namespace RaspberryLib;

enum State {CREATED,RUNNING,WAITING,TERMINATED};

//Puntero a procedimiento void sin argumentos para hacer callback.
typedef void (*ProcessCB)(void);

//Dirección inicial de las pilas de procesos
const uint32 baseStack = 0x4000;
//Distancia entre pila y pila
const uint32 stackDistance = 0x100;
//Variable global con la dirección disponible para pila nueva
uint32 freeStackPos = baseStack;




class PCBlock{
	public:

		PCBlock(){

		}

		void Create(uint32 newpid,	ProcessCB newprocess){
			pid = newpid;
			process = newprocess;
			sInitReserved = freeStackPos;
			freeStackPos = freeStackPos-stackDistance;

			priority = 0;

			state = CREATED;

			//Pointer to next PCBlock in queue
			next = 0;

			for(int i=0;i<17;i++){
				reservedRegisters[i] = 0;
			}
			pcontext =(uint32) &reservedRegisters[16];


		}
	//17 words reservados para los 16 registros + el CPSR para guardar el contexto del proceso
	uint32 reservedRegisters[17];
	uint32 pcontext;
	//Puntero al siguiente PCBlock para las colas de prioridad
	PCBlock * next;

	//Puntero a la dirección main del proceso asociado
	ProcessCB process;

	//Dirección inicial de pila reservada
	uint32 sInitReserved;


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
		}else{//No había elementos
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

	uint32 Count(){
		uint32 cont = 0;
		PCBlock * auxp;
		if (!isEmpty()){
			cont++;
			auxp = first;
			while(auxp->next != 0){
				cont++;
				auxp = auxp->next;
			}
		}
		return cont;
	}
};

#endif
