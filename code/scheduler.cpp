#include "scheduler.h"



void Scheduler::main(){
	pconsole->kprint("\nMain sched");

	//Taskqueue
	TaskQueue tq(pconsole);
	taskqueue = &tq;
	PCBlock b1(1,PrintProcess);
	PCBlock b2(2,PrintProcess2);
	PCBlock b3(3,PrintProcess3);
	taskqueue->Push(&b1);
	taskqueue->Push(&b2);
	taskqueue->Push(&b3);


	Schedule();

}


void Scheduler::LoadContext(){
	uint32 timecont;

	// Cargar en sp sInitReserved y restarle 13*4 para cargar en orden
	// 13*4 = 52 o 0x34

	//PUT32(GPFEN0,0x00000200);

	stackPointer = pBlock->sInitReserved;

	armLoadContext();

	while(true);


}
void Scheduler::Schedule(){
	asm volatile("pop {r0,r1}");
	/*
	 * Mientras no tenga un PCB apuntado por pBlock ni
	 * mi cola taskqueue esté vacía, se saca un PCB de esta
	 * y se ejecuta su proceso.
	 */

	while(!taskqueue->isEmpty()){

		pBlock = taskqueue->Pop();
		if(pBlock->state != TERMINATED){
			//Volvemos a meter
			taskqueue->Push(pBlock);
			if(pBlock->state == CREATED){
				pBlock->state = RUNNING;

				//guardar stackPointer del modo supervisor

				asm volatile("ldr r1,=globalSPkernel");
				asm volatile("str r13,[r1]");
				globaltestp = globalSPkernel;

				setTimer(timeslice);
				//Modo -PROBANDO CON SYSTEM-

				asm volatile("MOV r0,#0x1F");
				asm volatile("MSR CPSR,r0");

				//Carga SP del proceso
				stackPointer = pBlock->sInit;
				asm volatile("LDR r1,=stackPointer");
				asm volatile("LDR r13,[r1]");


				pBlock->process();
				setTimer(0);


			}else{
				//guardar stackPointer del modo supervisor
				asm volatile("ldr r1,=globalSPkernel");
				asm volatile("str r13,[r1]");
				globaltestp = globalSPkernel;


				setTimer(timeslice);
				LoadContext();
				setTimer(0);

			}

			asm volatile("msr CPSR,0xD3");
			asm volatile("ldr r1,=globalSPkernel");
			asm volatile("ldr sp,[r1]");


			pconsole->kprint("\n\nFin de proceso:");
			pconsole->kprint(pBlock->pid,CRED);
			asm volatile("ldr r1,=globalaux3");
			asm volatile("mrs r0,CPSR");
			asm volatile("str r0,[r1]");
			pconsole->kprint("\nCPSR:");
			pconsole->kprintHexa32(globalaux3,CGREEN);
			//Espera para ver el mensaje
			globaltimecont = CheckCounter()+4000000;
			while(globaltimecont >= CheckCounter()){

			}

			//si llega aquí de regreso es que ha terminado
			pBlock->state = TERMINATED;

		}
	}
	pconsole->kprint("\n\n---------TERMINATED---------",CRED);
	while(true);

}


