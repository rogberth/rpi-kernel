// *******************************
// FILE: 		kmain.cpp
// AUTHOR:		SharpCoder
// DATE:		2012-03-18
// ABOUT:		This is the entry point for my C++ based
//				raspberry pi kernel.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************

// *******************************
// FILE: 		kmain.cpp
// AUTHOR:		Roberto Curran García
// DATE:		2015-05-05
// ABOUT:		Here is the PCB class and the TaskQueue class defined
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************


#include "irq.cpp"
#include "raspberrylib.cpp"
#include "gpu2d.cpp"
#include "console.cpp"
#include "scheduler.cpp"
#include "process.cpp"
#include "svc.cpp"
// Include the meta data generate at compile time
// #include "meta.h"
#include "mem.h"
#include "math.h"
#include "meta.h"



using namespace RaspberryLib;


// Define any functions.
void print_header( Console* console );

// Define the entry point for our application.
// Note: It must be marked as "extern" in order for the linker
// to see it properly.

extern "C" void kmain( void ) {
	asm volatile("ldr r1,=globaltest");
	asm volatile("str lr,[r1]");
	if(irq_console != 0){
		irq_console->kprint("\n[ERROR] Salto a direcciOn 0x0. ",CRED);
		irq_console->kprintHexa32(globaltest,CBLUE);
		while(true);
	}
	//uint32 count = 0;
	// Create a canvas.
	gpu2dCanvas canvas(false,(uint32) 1024,(uint32) 768);
	
	// Create a console.
	Console console(&canvas);

	// Wire up the interrupts.
	irq_console = &console;

	/*
	 * Nota: los modelos desde Raspberry Pi A+ y B+ en adelante
	 * utilizan el pin GPIO 48 mientras que los modelos anteriores
	 * utilizan el 16.
	 */
	//Pin del led en modo salida
	SetGPIOfunction(48,1);
	//Pin del led APAGADO para encender el LED
	SetGPIOvalue(48,0);
	
	// Draw to the console.
	print_header( &console );
	console.kprint("Waiting: ");
	int index;
	for(index = 18; index > 0; index-- ) {
		console.kprint(".");
		Wait( 100 );
	}

	console.kprint("\n[STARTING]\n\n");

	// Initialize memory management first.
	init_page_table();
	console.kout("Initialized page table");
		
	// Turn on the green light to signify the end
	// of our initial kernel code.

	irq_enable();
	irq_enable_kerneltimer();
	globalverbose = false;

	SetButtons(true);


	Scheduler scheduler(&console);
	irq_scheduler = &scheduler;

	Wait(3000);
	scheduler.main();

	//setTimer(5000);


	while(true){
	}

}

void print_header( Console* console ) {
	
	meta info = getBuildInfo();
	
	console->kprint("Welcome to Mindflayer, a custom raspberry pi kernel written in C++\n");
	console->kprint("Build: ");
	console->kprint( info.VERSION );
	console->kprint("\n\n\n");
	

}

