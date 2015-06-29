// *******************************
// FILE: 		kmain.cpp
// AUTHOR:		Roberto Curran García
// DATE:		2015-05-05
// ABOUT:		Scheduler functions to run and schedule tasks.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************

#include "scheduler.h"


void Scheduler::main(){
	pconsole->kprint("\nMain scheduler");

	//Taskqueue
	TaskQueue tq(pconsole);
	taskqueue = &tq;

	PCBlock * p1 =(PCBlock *) rootPageTable->allocate(sizeof(PCBlock));
	PCBlock * p2 =(PCBlock *) rootPageTable->allocate(sizeof(PCBlock));
	PCBlock * p3 =(PCBlock *) rootPageTable->allocate(sizeof(PCBlock));
	PCBlock * p4 =(PCBlock *) rootPageTable->allocate(sizeof(PCBlock));


	p1->Create(pidcount++,PrintProcess);
	p2->Create(pidcount++,PrintProcess2);
	p3->Create(pidcount++,PrintProcess3);
	p4->Create(pidcount++,PrintProcess4);


	taskqueue->Push(p1);
	taskqueue->Push(p2);
	taskqueue->Push(p3);
	pbnewtask = p4;

	pconsole->kprint("\n");


	if(!taskqueue->isEmpty()){
		pconsole->kprint("\nNo vacia");
	}else pconsole->kprint("\nVacia");


	totaltime = CheckCounter();


	Schedule();

}


void Scheduler::Schedule(){

	asm volatile("pop {r0,r1}");
	/*
	 * Mientras no tenga un PCB apuntado por pBlock ni
	 * mi cola taskqueue esté vacía, se saca un PCB de esta
	 * y se ejecuta su proceso.
	 */

	while(!taskqueue->isEmpty()){
		//Suponemos que venimos desde la terminación del proceso anterior
		//si activó la global, lo terminamos (el estado) antes de sacar el nuevo.

		pBlock = taskqueue->Pop();

		if(globalverbose){
			pconsole->kprint("\nKernelSP: ",CBLUE);
			asm volatile("ldr r1,=globalaux");
			asm volatile("str sp,[r1]");
			pconsole->kprintHexa32(globalaux,CGREEN);
			pconsole->kprint("\n\nSaco el proceso: ",CBLUE);
			pconsole->kprint(pBlock->pid,CGREEN);
			pconsole->kprint("\nCon estado: ",CBLUE);
			pconsole->kprint(pBlock->state,CGREEN);
			pconsole->kprint("\nPCB guardado en : ",CBLUE);
			pconsole->kprintHexa32((uint32) &pBlock,CGREEN);
			pconsole->kprint("\n\nProximo proceso: ",CBLUE);
			pconsole->kprint(pBlock->next->pid,CGREEN);
			pconsole->kprint("\nPCB guardado en : ",CBLUE);
			pconsole->kprintHexa32((uint32) &(pBlock->next),CGREEN);
			RaspberryLib::Wait( 2000 );
		}

		if(pBlock->state != TERMINATED){
			//Incrementamos contador
			totalquantums++;
			//Volvemos a meter la tarea independientemente.
			taskqueue->Push(pBlock);



			//guardar stackPointer del modo supervisor
			asm volatile("ldr r1,=globalSPkernel");
			asm volatile("str r13,[r1]");


			pconsole->clear();
			if(pBlock->state == CREATED){
				pBlock->state = RUNNING;

				stackPointer = pBlock->sInitReserved;
				//Modo USER
				asm volatile("MOV r0,#0x10");
				asm volatile("MSR CPSR,r0");
				asm volatile("LDR r1,=stackPointer");
				asm volatile("LDR r13,[r1]");

				setTimerKernel(timeslice);
				pBlock->process();

				setTimerKernel(0);
				asm volatile("mov r5,#2");
				asm volatile("SVC #0");
				asm volatile("mov r5,#1");
				asm volatile("SVC #0");

			}else{

				setTimerKernel(timeslice);
				LoadContext();

				setTimerKernel(0);
				asm volatile("mov r5,#2");
				asm volatile("SVC #0");
				asm volatile("mov r5,#1");
				asm volatile("SVC #0");

			}


		}
		//testing
		globaltest++;

		if(globalverbose){
			pconsole->kprint("\nProceso ya terminado. Eliminando de la lista...",CRED);
		}


	}
	totaltime = CheckCounter()-totaltime;
	pconsole->clear();
	irq_disable_kerneltimer();
	pconsole->kprint("\n\nNO HAY MAS PROCESOS.\n",CGREEN);
	pconsole->kprint("\nQuantums:");
	pconsole->kprint(totalquantums,CBLUE);
	pconsole->kprint("\nTiempo total: ");
	pconsole->kprint(totaltime,CBLUE);
	pconsole->kprint(" us");
	while(true){
		asm volatile("nop");
	}

}

void Scheduler::LoadContext(){

	stackPointer =(uint32) pBlock->pcontext;
	if(stackPointer != 0){
		armLoadContext();
	}else{
		pconsole->kprint("\n\n[ERROR] Invalid loading value.",CRED);
	}

	while(true);


}


void Scheduler::AddTask(){
	taskqueue->Push(pbnewtask);
	if(globalverbose){
		pconsole->kprint("\nNumber of new elements:");
		pconsole->kprint(taskqueue->Count(),CBLUE);
		pconsole->kprint("\nNew Task pid: ");
		pconsole->kprint(pbnewtask->pid);
		pconsole->kprint("\nNew register zone: ");
		pconsole->kprintHexa32((uint32)&(pbnewtask->reservedRegisters[0]));
		RaspberryLib::Wait( 4000 );
	}
}


