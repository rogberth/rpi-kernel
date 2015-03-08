#ifndef __IRQPROTECT_H_
#define __IRQPROTECT_H_

#include "common.h"
#include "math.h"
#include "raspberrylib.h"
#include "gpu2d.h"

using namespace RaspberryLib;

namespace irqprotect {

	bool irqDissable(void){
		asm volatile("MSR CPSR,#0xD3");

	}
	bool irqEnable( void ) {
		asm volatile("MRS r0,CPSR");
		asm volatile("BIC r0,r0,#0xC");
		asm volatile("MSR CPSR,r0");
	}



}

#endif
