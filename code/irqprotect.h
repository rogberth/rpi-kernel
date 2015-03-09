#ifndef __IRQPROTECT_H_
#define __IRQPROTECT_H_

#include "common.h"
#include "math.h"
#include "raspberrylib.h"
#include "gpu2d.h"

using namespace RaspberryLib;

namespace irqprotect {

	bool irqDissable(void);
	bool irqEnable( void );



}

#endif
