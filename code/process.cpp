#include "common.h"
#include "math.h"
#include "raspberrylib.h"
#include "gpu2d.h"
#include "irqprotect.h"


Console * processConsole;
using namespace RaspberryLib;
using namespace irqprotect;

uint32 globaltest2 = 0;
uint32 globaltestp = 0;





void PrintProcess(){

	uint32 times = 1000;
	while(times != 0){

		times--;

		asm volatile("MSR CPSR,#0xDF");

		processConsole->kprint("\n[",CGREEN);
		processConsole->kprint(times,CGREEN);
		processConsole->kprint("] ",CGREEN);
		processConsole->kprint("Process 1! ------------------------------- long!",CCYAN);

		asm volatile("MSR CPSR,#0x1F");
	}

}


void PrintProcess2(){

	uint32 times = 1000;

	while(times != 0){
		times--;
		asm volatile("MSR CPSR,#0xDF");

		processConsole->kprint("\n[",CGREEN);
		processConsole->kprint(times,CGREEN);
		processConsole->kprint("] ",CGREEN);
		processConsole->kprint("Process 2! ------------medium",CRED);


		asm volatile("MSR CPSR,#0x1F");

	}
}

void PrintProcess3(){

	uint32 times = 1000;
	while(times != 0){

		times--;
		asm volatile("MSR CPSR,#0xDF");
		processConsole->kprint("\n[",CGREEN);
		processConsole->kprint(times,CGREEN);
		processConsole->kprint("] ",CGREEN);
		processConsole->kprint("Process 3! - short",CYELLOW);

		asm volatile("MSR CPSR,#0x1F");
	}
}


