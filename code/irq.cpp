#include "raspberrylib.h"
#include "console.h"
#include "scheduler.h"

#define		IRQ_BASE_ADDR	(unsigned int) 0x2000b000
#define		IRQ_ENABLE1_ADDR	(unsigned int) 0x2000b210
#define		IRQ_ENABLE2_ADDR	(unsigned int) 0x2000b214
#define		IRQ_ENABLEBASIC_ADDR	(unsigned int) 0x2000b218
#define		IRQ_DISABLE1_ADDR	(unsigned int) 0x2000b21C
#define		IRQ_DISABLE2_ADDR	(unsigned int) 0x2000b220
#define		IRQ_DISABLEBASIC_ADDR	(unsigned int) 0x2000b224

//Puntero a consola por declarar en kmain
Console* irq_console;
//Puntero a instancia de Scheduler por declarar en kmain
Scheduler * irq_scheduler;
//Si vale true, se imprimirá información adicional
bool globalverbose = false;

volatile uint32 globaltest = 0;

uint32 globalSPirq = 0;
uint32 globalLRirq = 0;
uint32 globalauxptr = 0;
uint32 globalSWI = 0;
uint32 globalCPSR = 0;


bool globaltimerset = false;
bool globalkerneltimerset = false;


//User print
uint32 globalPrintAux = 0;
uint32 globalPrintNum = 0;
uint32 globalPrintColour = 0;
uint32 globalPrintMode = 0;
char* globalPrintString = 0;



const uint32 AUXADDR = 0x1000;
const uint32 AUXADDR0 = 0x1000-0x30;
/*
 * Contador bucle, por alguna razón vale 40016 en vez de 0 :/
 */
uint32 irqcount = 0;




using namespace RaspberryLib;


bool irq_enable( void ) {
	//ENABLE IRQs 2
	PUT32(IRQ_ENABLE2_ADDR,0x007E0000);
	return true;
}

bool irq_disable(void){
	PUT32(IRQ_DISABLE2_ADDR,0x007E0000);
	return true;
}

bool irq_enable_timer(){
	PUT32(IRQ_ENABLE1_ADDR,0x8);
	return true;
}
bool irq_enable_kerneltimer(){
	PUT32(IRQ_ENABLE1_ADDR,0x2);
	return true;
}
bool irq_disable_timer(){
	PUT32(IRQ_DISABLE1_ADDR,0x8);
	return true;
}
bool irq_disable_kerneltimer(){
	PUT32(IRQ_DISABLE1_ADDR,0x2);
	return true;
}



extern "C" void irq_handler( void ) {
	//No se guardan datos de interrupciones previas en la pila, por lo que se reinicia.
	asm volatile("mov sp, #0x2000");
	//La dirección de retorno debe ser la interrupción interrumpida, por lo que se le resta 4.
	asm volatile("sub lr, lr, #4");
	asm volatile("stmfd sp!, {r0-r12,lr}");


	/*
	 * Guardado de contexto en zona de memoria auxiliar.
	 */
	//Guardar contexto en AUXADDR abajo
	asm volatile("push {r0}");
	//asm volatile("mov r0,#0x1000");
	asm volatile("mov r0, %[value]" :: [value] "r" (AUXADDR));

	//Guardar
	asm volatile("stmfd r0!, {r1-r12}");
	asm volatile("pop {r0}");
	//Se guarda el r0 en la posición más baja, debajo del valor de r1 (0x1000-0x30)
	asm volatile("mov r1, %[value]" :: [value] "r" (AUXADDR0));
	//asm volatile("ldr r1,=0xFCC");ESTO ESTABA MAL!!!!
	asm volatile("str r0,[r1]");
	//Guardado del r14 (lr) del modo IRQ ya que contiene el PC del proceso interrumpido
	asm volatile("ldr r1,=globalLRirq");
	asm volatile("str r14,[r1]");

	/*
	 *
	 * Variables
	 *
	 */
	//Variable para hacer esperas activas.
	uint32 gpiodetect0 = GET32(GPEDS0);
	uint32 timerstate = GET32(ARM_TIMER_BASE_ADDR);


	/*
	 *
	 * Gestión de IRQ
	 *
	 */



	//Botones 1 GPIO 2. Se programa con SetButtons
	if(gpiodetect0>0){
		//Para borrar el registro GPEDS0 se tiene que escribir el propio que tiene, no poner a 0.
		PUT32(GPEDS0,GET32(GPEDS0));

		//botón 1
		if(gpiodetect0 == 0x4){
			SetLED(1,true);
			SetLED(3,true);
			SetLED(5,true);
			irq_console->kprint("\nBotOn 1 pulsado",CBLUE);

		}
		//botón 2
		if(gpiodetect0 == 0x8){
			SetLED(2,true);
			SetLED(4,true);
			SetLED(6,true);
			irq_console->kprint("\nBotOn 2 pulsado",CBLUE);
		}

		TestBuzzer();
		SetButtons(false);
		setTimer(1000);
	}


	//TIMER C3. Se programa con la función setTimer
	else if(globaltimerset && ((timerstate & 0x8) == 0x8 )){
		//Mantener estas dos instrucciones

		globaltimerset = false;
		PUT32(ARM_TIMER_BASE_ADDR,0x8);

		SetLED(1,false);
		SetLED(2,false);
		SetLED(3,false);
		SetLED(4,false);
		SetLED(5,false);
		SetLED(6,false);
		SetButtons(true);

	}


	/*
	 *
	 * Guardado y carga de contexto de procesos.
	 *
	 */
	//TIMER C1, usar sólo para cambios de proceso. Se programa con la función setTimerKernel
	else if(globalkerneltimerset && ((timerstate & 0x2) == 0x2 )){
		globalkerneltimerset = false;
		//Para poner a 0 el bit del contador hay que escribir un 1.
		PUT32(ARM_TIMER_BASE_ADDR,0x2);

		globalauxptr = irq_scheduler->pBlock->pcontext;
		uint32 savelraux = globalauxptr;

		if(globalauxptr > 0x04000000){
			irq_console->kprint("\n\n[ERROR] DirecciOn de memoria invAlida.",CRED);
			irq_console->kprintHexa32(globalauxptr,CBLUE);
			irq_console->kprintHexa32((uint32)&globalauxptr,CGREEN);
			while(true);
		}
		uint32 specialSP = AUXADDR;

		if(globalverbose){
			irq_console->kprint("\nProceso ");
			irq_console->kprint(irq_scheduler->pBlock->pid,CBLUE);
			irq_console->kprint("\n\nZona de memoria para salvar contexto:");
			irq_console->kprintHexa32(globalauxptr,CFUCHSIA);
			uint32 cont = CheckCounter()+2000000;
			while(cont >= CheckCounter()){

			}
		}



		/*
		 * Nota: Hay que quitar 3 posiciones (0xC)
		 * Ya que hay que reservar espacio para
		 * r15 (pc) r14 (lr) y r13 (sp)
		 */
		globalauxptr = globalauxptr - 0xC;
		//Mover de AUXADDR a pila reservada de proceso corresponiente

		for(int i =1; i < 14; i++){
			globalauxptr = globalauxptr-4;
			specialSP = specialSP-4;
			PUT32(globalauxptr,GET32(specialSP));
		}

		//Se carga el puntero por donde va en r1.
		asm volatile("LDR r1,=globalauxptr");
		asm volatile("LDR r1,[r1]");

		//Guardado de CPSR user del proceso interrumpido.
		/*
		 * Nota:Como STR guarda en la dirección que se le da hay que restar
		 * 4 posiciones para emular el funcionamiento de las instrucciones
		 * de pila.
		 */

		asm volatile("SUB r1,r1,#0x4");
		asm volatile("MRS r0,SPSR");
		asm volatile("STR r0,[r1]");


		//Se restaura el valor inicial para guardar los 3 datos restantes
		globalauxptr = savelraux;
		asm volatile("LDR r1,=globalauxptr");
		asm volatile("LDR r1,[r1]");
		//PC del proceso interrumpido: r14 de IRQ
		asm volatile("SUB r1,r1,#0x4");
		asm volatile("LDR r2,=globalLRirq");
		asm volatile("LDR r2,[r2]");
		asm volatile("STR r2,[r1]");

		//Cambio a modo SYSTEM para rescatar r14 original y r13
		/*
		 * Nota: El modo SYSTEM y USER comparten los todos los regitros con
		 * la diferencia que desde el modo SYSTEM se puede cambiar el CPSR luego.
		 * El modo user no permite cambiar el CPSR sin que haya una interrupción.
		 */
		asm volatile("LDR r0,=0xDF");
		asm volatile("MSR CPSR,r0");
		//Guardado de el r14 del modo actual, que corresponde al del propio proceso
		asm volatile("SUB r1,r1,#4");
		asm volatile("str r14,[r1]");
		//Guardado de el sp del proceso
		asm volatile("SUB r1,r1,#4");
		asm volatile("STR r13,[r1]");

		//Cambio a modo Supervisor (modo del kernel)
		asm volatile("MOV r0,#0xD3");
		asm volatile("MSR CPSR,r0");
		//Se carga el SP del kernel antes de que se ejecutara el proceso.
		/*
		 * Nota:este paso no es necesario pero se hace por seguridad.
		 */
		asm volatile("LDR r1,=globalSPkernel");
		asm volatile("LDR sp,[r1]");

		/*
		 * Se limpia la pantalla. Esta paso no debería de ser
		 * necesario pero cambiarlo puede tener consecuencias.
		 */
		irq_console->clear();


		irq_scheduler->pBlock->state = WAITING;

		//Salimos de este handler mediante SVC 1 para volver al Scheduler.
		asm volatile("mov r5,#1");
		asm volatile("SVC #0");
		asm volatile("nop");
		asm volatile("nop");
		asm volatile("nop");
		asm volatile("nop");
		asm volatile("nop");
	}




	/*
	 * The caret (^) at the end of the mnemonic forces the processor to transfer the SPSR
	 * into the CPSR at the same time, saving us an instruction. This is the recommended
	 * way to exit an interrupt handler.
	 */
	asm volatile("ldr sp, =0x1FC8");
	asm volatile("ldmfd sp!, {r0-r12,pc}^");

}




extern "C" void basic_handler( void ) {

	irq_console->kout("Basic interrupt");

	// Blink once to show we've been here.
	RaspberryLib::Wait( 100 );
	return;
}




