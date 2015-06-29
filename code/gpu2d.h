// *******************************
// FILE: 		gpu2d.h
// AUTHOR:		SharpCoder
// DATE:		2012-03-27
// ABOUT:		This is the 2D graphics engine (re written) for my
//				raspberry pi kernel. I'm trying to implement some
//				nicer functions and a backbuffer to make everything
//				smoother.
//
// LICENSE:		Provided "AS IS". USE AT YOUR OWN RISK.
// *******************************
#ifndef __GPU2D_H_
#define __GPU2D_H_

// Include the common library.
#include "common.h"
#include "raspberrylib.h"
#include "mem.h"

//Constantes de color básico para texto
#define CWHITE 0xFFFFFF
#define CBLACK 0x0
#define CDARKBLUE  0xFF0000
#define CGREEN   0x00FF00
#define CRED 0x0000FF
#define CFUCHSIA 0xFF00FF
#define CCYAN 0xFFFF00
#define CYELLOW 0x00FFFF
#define CBLUE 0xF0330F

extern "C" void armClearScreen(uint32* addrFBInfo,uint32 colour);


class FB_Info {
public:
	uint32 screen_width;
	uint32 screen_height;
	uint32 virtual_width;
	uint32 virtual_height;
	uint32 pitch;
	uint32 depth;
	uint32 xoffset;
	uint32 yoffset;
	uint32 framePtr;
	uint32 bufferSize;
};

// Define some of the basic functions
class gpu2dCanvas  {
public:
	// Constructor
	gpu2dCanvas( void );
	gpu2dCanvas( bool useDoubleBuffer,uint32 screen_w,uint32 screen_h );
	
	// Basic methods.
	void Draw( void );
	void DrawLine( int x1, int y1, int x2, int y2, uint32 color );
	void DrawCharacter( int x, int y, char c, uint32 color );
	void ClearCharacter( int x, int y );
	void Clear( uint32 color );
	//TFG
	void ClearFast();
	
	uint32 dameBS(){
		return this->fbInfo->bufferSize;
	}

	// Basic properties.
	bool valid;





private:
	bool switched;
	bool enableDoubleBuffer;
	FB_Info* fbInfo;
	
	bool initFrameBuffer( void );
	void sync( void );
	void setPixel( uint32 x, uint32 y, uint32 color );
};

#endif
