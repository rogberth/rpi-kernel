// *******************************
// FILE: 		proccess.cpp
// AUTHOR:		Roberto Curran García
// DATE:		2015-05-05
// ABOUT:		Functions defined here are meant to be used as
//				programs to be executed by the scheduler.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************

#include "process.h"



void PrintProcess(){

	uint32 times = 500;
	while(times != 0){
		times--;
		userPrint("\n[",CGREEN);
		userPrint(times,CGREEN);
		userPrint("] ",CGREEN);
		userPrint("Process 1! ------------------------------- long!",CCYAN);
	}

}


void PrintProcess2(){

	uint32 times = 500;

	while(times != 0){
		times--;

		userPrint("\n[",CGREEN);
		userPrint(times,CGREEN);
		userPrint("] ",CGREEN);
		userPrint("Process 2! ------------medium",CRED);
	}


	userAddTask();

}

void PrintProcess3(){


	uint32 times = 500;
	while(times != 0){

		times--;
		userPrint("\n[",CGREEN);
		userPrint(times,CGREEN);
		userPrint("] ",CGREEN);
		userPrint("Process 3! - short",CYELLOW);
	}


}

void PrintProcess4(){


	uint32 times = 500;
	while(times != 0){

		times--;
		userPrint("\n[",CGREEN);
		userPrint(times,CGREEN);
		userPrint("] ",CGREEN);
		userPrint("Process 4! ------",CFUCHSIA);
	}
}

void test1(){

	for(uint32 i = 0; i < 10000000; i++){
		asm volatile("nop");
	}

}


