// *******************************
// FILE: 		raspberrylib.c
// AUTHOR:		SharpCoder
// DATE:		2012-03-18
// ABOUT:		This is the heart of my C++ library for
//				low-level raspberry pi interfacing.
//				It will grow over time as I learn more about
//				the architecture.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************
#include "raspberrylib.h"
#include "common.h"


namespace RaspberryLib {



	volatile uint32 GET32( uint32 addr ) {
		// Create a pointer to our location in memory.
		volatile uint32* ptr = (volatile uint32*)( addr );
		// Return the value.
		return (uint32)(*ptr);
	}
	
	volatile void PUT32( uint32 addr, uint32 value ) {
		// Create a pointer to our location in memory.
		volatile uint32* ptr = (volatile uint32*)( addr );
		// Set the value.
		*ptr = value;
	}
	
	volatile char GET4( uint32 addr ) {
		// Create a pointer to our location in memory.
		volatile char* ptr = (volatile char*)( addr );
		// Return the value.
		return (char)(*ptr);
	}
	
	volatile void PUT4( uint32 addr, char value ) {
		// Create a pointer to our location in memory.
		volatile char* ptr = (volatile char*)( addr );
		// Set the value.
		*ptr = value;
	}
	
	void SetGPIO( uint32 pin, uint32 state ) {
		
		// Setup some initial things.
		/*
		 * Explicación de la instrucción por pasos:
		 * 1- bytes = 0
		 * 2- operación condicional:
		 * 	si state == 1 entonce value = 0x28
		 * 	si no value = 0x1C
		 */
		uint32 bytes = 0, value = ( state == 1 ) ? 0x28 : 0x1C;
		
		// Calculate the byte shift variables.
		while( pin > 10 ) {
			pin -= 10;
			bytes++;
		}
		
		// Add 4 to bytes.
		// Multiplica por 4 porque queremos direccionar words (4 bytes)
		bytes *= 4;
		
		// Set the proper locations in memory.
		PUT32( ARM_GPIO_BASE_ADDR + bytes, (uint32)1 << (pin * 3) );
		PUT32( ARM_GPIO_BASE_ADDR + value, (uint32)1 << (bytes * 4) );
		
	}
	
	//Crear setGPIOfunction y setGPIOvalue
    void setGPIOfunction(uint32 pin, byte function){
    	/*
    	 * Se comprueba que el pin pasado como argumento esté comprendido entre 0 y 53
    	 * y que la función del pin esté comprendida entre 0 y 7
    	 */
    	if((pin <  54) && (function < 8)){
    		/*
			* Calculamos el offset que necesitamos para encontrar el registro
			* de este pin del GPIO.
    		*/
    		uint32 offset = 0;
    		while(pin > 10){
    			pin -= 10;
    			offset++;
    		}
    		/*
    		 * offset valdrá entre 0 y 5. Hay 6 registros de "function select"
    		 * del GPIO. Por lo que sólo faltaría multiplicar el valor del offset
    		 * por 4 para conseguir el offset real ya que cada registro está
    		 * alineado en 4 bytes (un word)
    		 */
    		offset *= 4;

    		/*
    		 * Para introducir el valor del parámetro function en el registro correspondiente
    		 * pasamos como primer argumento en PUT32 la dirección base del registro GPIO
    		 * más el nuevo offset recién calculado. El segundo parámetro será function que
    		 * debido a cómo están organizados estos, hay que desplazar la variable para
    		 * colocar el valor en los 3 bits que le correspondan al pin designado.
    		 * Este desplazamiento se calcula multiplicando el valor actual de pin (de 0 a 9)
    		 * por 3.
    		 */

    		PUT32(ARM_GPIO_BASE_ADDR+offset,function << (pin * 3));

    	}
    }
    void setGPIOvalue(uint32 pin, bool value){
    	/*
    	 * Se comprueba que el pin pasado como argumento esté comprendido entre 0 y 53
    	 */
    	if(pin <  54){
    		/*
    		 * Dependiendo de si el valor que se le quiera dar al pin sea 1 o 0
    		 * habrá que hacerlo en registros distintos como también si el número
    		 * de pin es igual o menor a 31 o mayor.
    		 */
    		uint32 offset;
    		if(pin <= 31){
    			if(value){
    				offset = 0x1C;
    			}
    			else{
    				offset = 0x28;
    			}
    		}else{
    			if(value){
					offset = 0x20;
				}
				else{
					offset = 0x2C;
				}
    			//Necesario para almacenar el bit de value
    			pin -= 32;
    		}
    		/*
    		 * Teniendo ya la dirección más el offset correcto
    		 * sólo falta almacenar un 1 lógico al bit correspondiente
    		 * del pin. El desplazamiento corresponde al mismo número del pin
    		 * para los 31 primeros pero para los restantes hay que restarle
    		 * 32 como se ha hecho antes (con esa condición)
    		 */
    		PUT32(ARM_GPIO_BASE_ADDR+offset,1 << pin);

    	}
    }
    void setTimer(uint32 time){
    	//ACTIVAR c1 (c2 y c0 están siendo usados por cp?)

    	PUT32(ARM_TIMER_BASE_ADDR+0x10,CheckCounter()+(time*1000));
    	PUT32(ARM_TIMER_BASE_ADDR,0x2);
    }

	uint32 CheckCounter( void ) {
		return GET32( ARM_COUNTER_ADDR );
	}
	
	
	// This method will wait 'time' in 'ticks'
	// (or cycles) instead of nanoseconds.
	void WaitQuick( uint32 time ) {
		uint32 ticks = CheckCounter();
		uint32 target = ticks + time;
		while(CheckCounter() < target ) { /* Do nothing... */ }
	}
	
	void Wait( uint32 time ) {
		// Read the current time from
		uint32 ticks = CheckCounter();
		// Calculate how long to wait.
		uint32 target = ticks + ( time * 800 );
		// Loop until then.
		while ( CheckCounter() < target ) {
			/* Do Nothing */
		}
	}
	
	void Blink( uint32 count, uint32 time ) {
		
		// Loop 'count' times.
		for( ; count > 0; count-- ) {
			// Turn on the light.
			SetGPIO( 16, true );
			// Wait
			Wait( time );
			// Turn the light off.
			SetGPIO( 16, false );
			// Wait
			Wait( time );
		}
		
	}
	
	void PiFault( const char* msg ) {
		
		// This is the generic "raspberry pi is busted
		// and there is no screen to write to yet" 
		// error function. The message variable is just 
		// in the hopes that I can someday write to the 
		// sd card. But until I get there, it won't be used.
		Blink( 4, 200 );
		return;		
	}
	
	void MailboxWrite( char channel, uint32 data ) {
		// Worf: 	We're ready to fire captain!
		// Picard: 	On my mark...
		while ( GET32( ARM_MAIL_BASE + ARM_MAIL_STATUS ) & MAIL_FULL ) {
			/* Do Nothing. */
		}
		
		// If we made it here, beam our data aboard!
		// (Note the bit math is basically stripping off the last 4 bits of
		// the data and replacing it with the channel number, because that's
		// how the raspberry pi rolls).
		
		// ALSO NOTE: YOU MUST USE THE MEMORY BARRIER!
		Memory::Barrier();
		
		// Store our data in the proper register.
		PUT32( ARM_MAIL_BASE + ARM_MAIL_WRITE, channel | (data & 0xFFFFFFF0) );
		
		// This one might be optional...
		Memory::Barrier();
	}
	
	uint32 MailboxCheck( char channel ) {
	
		// Define some variables.
		uint32 data = 0, count = 0;
		// Worf: Sir! They're firing on us!
		// Picard: Evasive maneuver alpha.
		while ( true ) {
			// First, loop over the status.
			while ( GET32( ARM_MAIL_BASE + ARM_MAIL_STATUS ) & MAIL_EMPTY ) {
				/* Do Nothing */
				if ( count++ >= (1<<20) ) {
					PiFault( "Error. Circular loop checking for status." );
					return 0xFFFFFFFF;
				}
			}
			
			// NOTE: You absolutely MUST use the memory barriers
			// here!!! Without them, the evil empire will win
			// a bloody victory against the federation.
			Memory::Barrier();
			
			// Read the data.
			data = GET32( ARM_MAIL_BASE );
			
			// This one MIGHT be optional. But do you really want
			// the evil empire to win?
			Memory::Barrier();
			
			// Derrive the channel bit.
			if ( (data & 0xF) == channel )
				// If they match, then break out.
				break;
		}
		
		// Return our data.
		return (data & 0xFFFFFFF0);
	}
	
	GPU* AcquireFrameBuffer( uint32 xres, uint32 yres ) {
		// Create a structure in memory to hold
		// our request to the GPU.
		// [0] = Monitor Width, [1] = Monitor Height
		// [2] = Virtual Width, [3] = Virtual Height
		// [4] = Pitch (set by GPU), [5] = Depth
		// [6] = X Offset, [7] = Y Offset,
		// [8] = Frame Buffer Pointer, [9] = Frame Buffer Size.
		GPU* request = (GPU*)(KERNEL_FB_LOC);
		request->screen_width = xres;
		request->screen_height = yres;
		request->virtual_width = xres;
		request->virtual_height = yres;
		request->pitch = 0;
		request->depth = 24;
		request->xoffset = 0;
		request->yoffset = 0;
		request->framePtr = 0;
		request->bufferSize = 0;
		request->valid = false;
		
		// Snag the pointer value in uint32 form.
		uint32 requestAddress = Memory::PHYSICAL_TO_BUS( (uint32)request );
		
		// And then write a letter to our dearest GPU.
		MailboxWrite( 1, requestAddress );
		
		// And then read the response... Really read it.
		uint32 response = 0xFF, explode = 10000;
		do {
			response = MailboxCheck( 1 );
		} while ( response != 0 && explode-- > 0 ) ;
		
		// Check if we've exploded.
		if ( explode <= 0 ) {
			PiFault( "Error! The mailbox didn't return a suitable value in a timely manner." );
			return request;
		}
		
		// Check the meaning of the response.
		if ( request->framePtr == 0 ) {
			PiFault( "Error! The framebuffer returned is invalid. Aborting framebuffer acquisition" );
			return request;
		}
		
		if ( request->pitch == 0 ) {
			PiFault( "Error! The pitch returned is invalid. Aborting framebuffer acquisition." );
			return request;
		}
		
		// Initialize the success variables.
		request->valid = true;
		request->framePtr = Memory::BUS_TO_PHYSICAL( request->framePtr );
		
		// Return the GPU object.
		return request;
	}

}
