//	NOTE: This file is automatically generated at compile time.
//	The output format is guarenteed to be consistent each compile.
//	Using a pre-defined structure like this, I can export information 
//	about the specific build this kernel originated from without worrying about 
//	compile problems. DO NOT CHANGE. As your changes will be overwitten anyway.

#ifndef __META_H_
#define __META_H_

struct meta {
   const char*  AUTHOR;
   const char*  EMAIL;
   const char*  KERNEL_NAME;
   const char*  KERNEL_NAME_CODE;
   const char*  KERNEL_REPO;
   const char*  BUILD_DATE;
   const char*  VERSION;
   const char*  LOGO_TEXT;
   int  LOGO_WIDTH;
   int  LOGO_HEIGHT;
};


static meta getBuildInfo() {
	meta properties;
	properties.AUTHOR="Roberto Curran";
	properties.EMAIL="rogberth@gmail.com";
	properties.KERNEL_NAME="0xrpi Kernel";
	properties.KERNEL_NAME_CODE="Mindflayer";
	properties.KERNEL_REPO="https://github.com/rogberth/rpi-kernel";
	properties.BUILD_DATE="2015-06-05  10:51:30 ";
	properties.VERSION="0.0.2565";
	properties.LOGO_TEXT="";
	properties.LOGO_WIDTH= 30;
	properties.LOGO_HEIGHT= 50;
	return properties;
}

#endif
