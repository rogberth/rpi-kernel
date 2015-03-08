/*
 * Bloque de control de proceso
 * Cada instancia de esta clase contendrá información de un proceso asociado
 *
 */
#ifndef __process_H_
#define __process_H_

#include "common.h"
#include "math.h"
#include "raspberrylib.h"
#include "gpu2d.h"

//abstract class

class DummyTest{
public:
	//Constructor
	DummyTest(uint32 pid){

	}
	void main();
};

class PrintProcess{
public:
	//Constructor
	PrintProcess(Console * pconsole, const char* string, uint32 colour,uint32 times){
		this->pconsole = pconsole;
		this->string = string;
		this->colour = colour;
		this->times = times;

		//pmain = main;
	}
	//Destructor  necesario
	// ~PrintProcess();


	 void main();

private:
	//Veces que se repetirá el texto
	uint32 times;
	//Color a imprimir
	uint32 colour;
	//Puntero a una cadena constante.
	const char * string;
	//Puntero a consola
	Console * pconsole;

	/*
	 * ESTO DEBERÍA HEREDARLO
	 */
	//void (* pmain)();

};



#endif
