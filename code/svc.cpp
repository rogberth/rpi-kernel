#include "svc.h"




extern "C" void swi_writer() {

	char * string;
	uint32 c,num;
	uint32 mode;

	asm volatile("mov %[value],r6" : [value] "=r" (string));
	asm volatile("mov %[value],r7" : [value] "=r" (c));
	asm volatile("mov %[value],r8" : [value] "=r" (num));
	asm volatile("mov %[value],r9" : [value] "=r" (mode));

	switch(mode){
		case 0:
			irq_console->kprint(string,c);
			break;
		case 1:
			irq_console->kprint(string,c);
			break;
		case 2:
			irq_console->kprint(num,c);
			break;
		case 3:
			irq_console->kprintHexa32(num,c);
			break;
	}


}

extern "C" void swi_svmode(){
	uint32 waittime = 3000;
	//Evitar cambio en SP
	asm volatile("pop {r4, r5, r6, lr}");
	if(globalverbose){
		irq_console->kprint("\n\n==Changing to SV MODE==",CBLUE);
		irq_console->kprint("\nRemaining processes:");
		irq_console->kprint(irq_scheduler->taskqueue->Count());
		asm volatile("ldr r1,=globaltest");
		asm volatile("str sp,[r1]");
		irq_console->kprint("\n");
		irq_console->kprintHexa32(globaltest,CGREEN);


		RaspberryLib::Wait(waittime);
	}


	irq_scheduler->Schedule();

}
extern "C" void swi_endTask(){

	uint32 waittime = 3000;

	irq_scheduler->pBlock->state = TERMINATED;
	if(globalverbose){
		irq_console->kprint("\n\n==Fin de proceso==",CRED);
		RaspberryLib::Wait(waittime);
	}
	asm volatile(".ltorg");
}

extern "C" void swi_addTask(){
	//Aquí falla todo como no se haga algo de “relleno”
	SetGPIOvalue(16,1);
	SetGPIOvalue(16,0);

	if(irq_scheduler != 0){
		irq_scheduler->AddTask();


	}

}

void userAddTask(){
	asm volatile("mov r5,#3");
	asm volatile("svc #0");

}
void userPrint(const char * string,uint32 colour){

	//irq_console->kprint(*string,CBLUE);
	char * caux = (char *) string;
	uint32 cont = 0;

	//Si recorro el string, no me falla nunca.
	while((*caux != '\0')||(cont > 1023)){
		cont++;
		caux++;
	}

	if(cont > 1023){
		irq_console->kprint("\n\n[ERROR] Invalid string pointer.",CRED);
	}else{
		asm volatile("mov r7, %[value]" :: [value] "r" (colour));
		asm volatile("mov r6, %[value]" :: [value] "r" (string));
		asm volatile("mov r9, #0");
		asm volatile("mov r5,#0");
		asm volatile("SVC #0");
	}
	//Si el compilador dice que la literal pool está muy
	//lejos usar esta directiva al final de la función:
	asm volatile(".ltorg");

}
void userPrint(const char * string){
	userPrint(string,CWHITE);
}

void userPrint(char * string,uint32 colour){

	//irq_console->kprint(*string,CBLUE);
	char * caux = (char *) string;
	uint32 cont = 0;

	//Si recorro el string, no me falla nunca.
	while((*caux != '\0')||(cont > 1023)){
		cont++;
		caux++;
	}

	if(cont > 1023){
		irq_console->kprint("\n\n[ERROR] Pointer to string invalid.",CRED);
	}else{
		asm volatile("mov r7, %[value]" :: [value] "r" (colour));
		asm volatile("mov r6, %[value]" :: [value] "r" (string));
		asm volatile("mov r9, #1");
		asm volatile("mov r5,#0");
		asm volatile("SVC #0");
	}


}
void userPrint(char * string){
	userPrint(string,CWHITE);
}

void userPrint(uint32 num,uint32 colour){
	volatile bool ok;
	if(num >= 0){
		asm volatile("mov r7, %[value]" :: [value] "r" (colour));
		asm volatile("mov r8, %[value]" :: [value] "r" (num));
		asm volatile("mov r9, #2");
		asm volatile("mov r5,#0");
		asm volatile("SVC #0");
		ok = true;
		if(ok == true){
			//Si no tengo nada después del SVC se reinicia?
			asm volatile( "nop");
		}else{
			irq_console->kprint("\n\n[ERROR] ????",CRED);
		}
	}else{
		irq_console->kprint("\n\n[ERROR] Number invalid.",CRED);
	}

}
void userPrint(uint32 num){
	userPrint(num,CWHITE);
}

void userPrintHexa32(uint32 num,uint32 colour){
	volatile bool ok;
	if(num >= 0){
		asm volatile("mov r7, %[value]" :: [value] "r" (colour));
		asm volatile("mov r8, %[value]" :: [value] "r" (num));
		asm volatile("mov r9, #3");
		asm volatile("mov r5,#0");
		asm volatile("SVC #0");
		ok = true;
		if(ok == true){
			//Si no tengo nada después del SVC se reinicia?
			asm volatile( "nop");
		}else{
			irq_console->kprint("\n\n[ERROR] ????",CRED);
		}

	}else{
		irq_console->kprint("\n\n[ERROR] Number invalid.",CRED);
	}
}

void userPrintHexa32(uint32 num){
	userPrintHexa32(num,CWHITE);
}
