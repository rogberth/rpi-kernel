#include "scheduler.h"



//uint32 stackPointer = 0;

void Scheduler::main(){
	pconsole->kprint("\nMain sched");
	//PrintProcess prueba(pconsole,"P1 -juejj-", CWHITE,10000);
	//PrintProcess prueba2(pconsole,"P2 ^____^", CWHITE,10000);
	//PrintProcess p3(pconsole,"P1 -juejj-", CWHITE,10000);
	PCBlock * auxer;
	//Taskqueue
	TaskQueue tq(pconsole);
	taskqueue = &tq;
	PCBlock b1(1,PrintProcess);
	PCBlock b2(2,PrintProcess2);
	PCBlock b3(3,PrintProcess3);
	taskqueue->Push(&b1);
	auxer = taskqueue->first;
	while(auxer != 0){
		pconsole->kprint("\n",CRED);
		pconsole->kprint(auxer->pid,CRED);
		auxer = auxer->next;
	}
	pconsole->kprint("\n--------");
	taskqueue->Push(&b2);
	auxer = taskqueue->first;
	while(auxer != 0){
		pconsole->kprint("\n",CRED);
		pconsole->kprint(auxer->pid,CRED);
		auxer = auxer->next;
	}
	pconsole->kprint("\n--------");
	taskqueue->Push(&b3);

	auxer = taskqueue->first;
	while(auxer != 0){
		pconsole->kprint("\n",CRED);
		pconsole->kprint(auxer->pid,CRED);
		auxer = auxer->next;
	}

	Schedule();

}


void Scheduler::LoadContext(){
	//pconsole->kprint("\nLOADING!",CRED);
	uint32 timecont;
	/*
	 * Siguiendo el esquema del guardado en la irq, se carga en orden
	 * sabiendo que hay 16 words de pila. Lo último en cargar debe ser
	 * el pc pues nos llevará a la misma ejecución del proceso donde se quedó
	 * y para entonces todo el contexto tiene que estar ya cargado de vuelta
	 */
	// Cargar en sp sInitReserved y restarle 13*4 para cargar en orden
	// 13*4 = 52 o 0x34

	PUT32(GPFEN0,0x00000200);

	stackPointer = pBlock->sInitReserved;
	setTimer(timeslice);
	armLoadContext();

	while(true);


}
void Scheduler::Schedule(){
	//pconsole->kprint("\nScheduling---!!!!",CCYAN);
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
				/*
				pconsole->kprint("\nPID:	",CWHITE);
				pconsole->kprint(pBlock->pid,CRED);
				pconsole->kprint("\nTIMER: ",CWHITE);
				pconsole->kprintHexa32(GET32(ARM_TIMER_BASE_ADDR),CGREEN);
				*/
				//guardar stackPointer del modo supervisor

				asm volatile("ldr r1,=globalSPkernel");
				asm volatile("str r13,[r1]");
				globaltestp = globalSPkernel;

				setTimer(timeslice);
				//Modo user -PROBANDO CON SYSTEM-

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
			globaltimecont = CheckCounter()+4000000;
			while(globaltimecont >= CheckCounter()){

			}

			//EN CASO DE QUE HAGA LO IMPORTANTE, ESTO CAMBIA
			//si llega aquí de regreso es que ha terminado
			pBlock->state = TERMINATED;

		}
	}
	pconsole->kprint("\n\n---------TERMINATED---------",CRED);
	while(true);

}

void Scheduler::RunNext(){

	Schedule();

}
