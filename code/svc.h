#ifndef __SVC_H_
#define __SVC_H_


#include "raspberrylib.h"
#include "console.h"
#include "scheduler.h"

using namespace RaspberryLib;


extern "C" void swi_writer();
extern "C" void swi_handler();
extern "C" void swi_svmode();
extern "C" void swi_addTask();
extern "C" void swi_endTask();


void userPrint(const char * string,uint32 colour);
void userPrint(const char * string);

void userPrint(char * string,uint32 colour);
void userPrint(char * string);

void userAddTask();
void userPrint(uint32 num,uint32 colour);
void userPrint(uint32 num);
void userPrintHexa32(uint32 num,uint32 colour);
void userPrintHexa32(uint32 num);





#endif
