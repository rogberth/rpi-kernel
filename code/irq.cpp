#include "raspberrylib.h"
#include "console.h"
#include "scheduler.h"



Console* irq_console;
bool use_irq_console;
Scheduler * irq_scheduler;

uint32 globaltest = 0;
uint32 globalSPirq = 0;
uint32 globalLRirq = 0;
uint32 globalContexSave = 0;
uint32 globalSavePC = 0;
uint32 globalauxptr = 0;
uint32 globalSWI = 0;
uint32 globalCPSR = 0;



const uint32 AUXADDR = 0x1000;

/*
 * Contador bucle, por alguna razón vale 40016 en vez de 0 :/
 */
uint32 irqcount = 0;


#define		IRQ_BASE_ADDR	(unsigned int) 0x2000b000

using namespace RaspberryLib;

extern "C" void irq_handler( void ) {
	asm volatile("mov sp, #0x2000");

	asm volatile("sub lr, lr, #4");
	asm volatile("stmfd sp!, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r14}");
	//Guardar contexto en AUXADDR abajo
	asm volatile("push {r0}");
	asm volatile("mov r0,#0x1000");

	asm volatile("stmfd r0!, {r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12}");
	asm volatile("pop {r0}");
	//Se guarda el r0 en la posición más baja, debajo del valor de r1 (0x1000-0x32)
	asm volatile("ldr r1,=0xFCC");
	asm volatile("str r0,[r1]");
	//asm volatile("stmfd r0!, {r1}");

	//Guardado del r14 (lr) del modo IRQ ya que contiene el PC del proceso interrumpido
	asm volatile("ldr r1,=globalLRirq");
	asm volatile("str r14,[r1]");

	uint32 timecont = 0;
	//irq_console->kprintHexa32(globalLRirq,CBLUE);

	//Limpiar GPIO detect state y desactivar botón
	//PUT32(GPFEN0,0x00000000);
	//PUT32(0x20200040,GET32(0x20200040));

	//Desactivar timer
	PUT32(ARM_TIMER_BASE_ADDR,0x2);

	if(irq_scheduler != 0){
		//Mover de AUXADDR a pila reservada de proceso corresponiente
		globalauxptr = irq_scheduler->pBlock->sInitReserved;
		uint32 specialSP = AUXADDR;

		uint32 savelraux = globalauxptr;

		/*
		 * Hay que quitar 3 posiciones (0xC)
		 * Ya que hay que reservar espacio para
		 * r15 (pc) r14 (lr) y r13 (sp)
		 */

		globalauxptr = globalauxptr - 0xC;
		for(int i =1; i < 14; i++){
			globalauxptr = globalauxptr-4;
			specialSP = specialSP-4;
			PUT32(globalauxptr,GET32(specialSP));



		}


		asm volatile("LDR r1,=globalauxptr");
		asm volatile("LDR r1,[r1]");
		//USER NO ACEPTA CAMBIOS EN CPSR
		//Guardado de CPSR user (volver al modo en SPSR y deshabilitandolas IRQ
		//No usar el SVC aquí para conservar el valor de los registros
		asm volatile("SUB r1,r1,#0x4");
		asm volatile("MRS r0,SPSR");
		asm volatile("str r0,[r1]");


		globalauxptr = savelraux;


		//Volvemos al inicio de la pila del proceso

		asm volatile("LDR r1,=globalauxptr");
		asm volatile("LDR r1,[r1]");
		//-PC-Guardado del r14 de IRQ, el PC a retomar del proceso interrumpido
		asm volatile("SUB r1,r1,#0x4");
		asm volatile("LDR r2,=globalLRirq");
		asm volatile("LDR r2,[r2]");
		asm volatile("STR r2,[r1]");

		//Cambio a modo SYSTEM para rescatar r14 original y r13

		asm volatile("LDR r0,=0xDF");
		asm volatile("MSR CPSR,r0");


		//Guardado de el r14 del modo actual, que corresponde al del propio proceso
		asm volatile("SUB r1,r1,#4");
		asm volatile("str r14,[r1]");
		//Guardado de el sp del proceso
		asm volatile("SUB r1,r1,#4");
		asm volatile("str r13,[r1]");




		asm volatile("mov r0,#0xD3");
		asm volatile("MSR CPSR,r0");


		//Carga temporal del sp del kernel?
		asm volatile("ldr r1,=globalSPkernel");
		asm volatile("ldr sp,[r1]");

		irq_console->clear();
		irq_scheduler->pBlock->state = WAITING;
		irq_scheduler->Schedule();

	}





	/*
		The caret (A) at the end of the mnemonic forces the processor to transfer the SPSR
	into the CPSR at the same time, saving us an instruction. This is the recommended
	way to exit an interrupt handler.
		*/
	asm volatile("ldmfd sp!, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,pc}^");

}


//r0 se ha modificado previamente
extern "C" void swi_handler( void ) {

	switch(globalSWI){
	case 0://Cambio simple a modo SV sin IRQ
		irq_console->kprint("\nCambiando a SV");
		asm volatile("MOV r0,#0xD3");
		asm volatile("MSR CPSR,r0");
		break;
	case 1://Disable IRQ spsr
		asm volatile("MRS r0,SPSR");
		asm volatile("LDR r1,=0x400");
		asm volatile("STR r0,[r1]");
		asm volatile("ORR r0,r0,#0xC0");
		asm volatile("MSR SPSR,r0");
		break;
	case 2://Recargar el CPSR original mediante el SPSR
		asm volatile("MRS r0,SPSR");
		asm volatile("LDR r1,=0x400");
		asm volatile("LDR r0,[r1]");
		asm volatile("MSR SPSR,r0");
		break;
	case 3://Cambio a modo user
		asm volatile("MOV r0,#10");
		asm volatile("MSR SPSR,r0");
		break;
	}

	return;
}

extern "C" void basic_handler( void ) {

	if ( use_irq_console )
		irq_console->kout("Basic interrupt");

	// Blink once to show we've been here.
	RaspberryLib::Wait( 100 );
	return;
}



bool irq_enable( void ) {
	//IMPORTANTE PARA TIMER IRQ 1
	PUT32(0x2000B210,0x00000002);
	//ENABLE IRQs 2
	PUT32(IRQ_BASE_ADDR+0x214,0x007E0000);
	//ENABLE Basic IRQs
	PUT32(IRQ_BASE_ADDR+0x218,0x00000001);
	return true;
}

bool irq_dissable(void){
	PUT32(0x2000B21C,0x00000002);
	PUT32(IRQ_BASE_ADDR+0x220,0x007E0000);
	PUT32(IRQ_BASE_ADDR+0x224,0x00000001);
	return true;
}

void irq_test( void ) {
	
	asm volatile( "SWI #0x0000FF" );
		
}

void swi_DissableIRQ( void ) {

	asm volatile( "SWI #0x0000FF" );

}


