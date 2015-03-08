#ifndef __CONSOLE_H_
#define __CONSOLE_H_

#include "common.h"
#include "math.h"
#include "raspberrylib.h"
#include "gpu2d.h"

uint32 globalProtectCPSR = 0;

#define 	MAX_CHAR_PER_LINE		120
#define		MAX_LINE				45


class Console {
	public:
		
		// Fancy print methods.
		template<class T>
		void kprintf( char* string, T value );
		
		template<class T>
		void kprintf( const char* string, T value );
		
		// Standard printf functions.
		void kprint( char* string );
		void kprint( const char* string );
		void kprint( uint32 number);
		void kprint( uint32 number, uint32 colour);
		void kprint( char* string, uint32 colour );
		void kprint( const char* string, uint32 colour );
		void kprintHexa32( uint32 number);
		void kprintHexa32( uint32 number, uint32 colour );
		void kbase( long value, long base, long size );
		void kbase( long value, long base );

		// Really useless functions
		void kout( const char* string );
		
		// Clearscreen function.
		void clear( void );
		


		// Constructor.
		Console( gpu2dCanvas* surface );


	private:
		uint32 charx;
		uint32 chary;
		uint32 padding;
		gpu2dCanvas* canvas;
		void printChar( char c, uint32 color );
		void newLine( void );
};

#endif
