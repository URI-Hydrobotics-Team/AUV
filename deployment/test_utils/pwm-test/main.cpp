#include <wiringPi.h>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <cstring>


const int PWM_pin = 1; //use GPIO 1

char mode[16], verb[16];

void printHelp(){

	std::cout << "USAGE: ./pwm-test <mode> <arguments>\n";
	std::cout << "Modes:\n";
	
	std::cout << "\thelp\t(display help)\n";
	std::cout << "\tservo <position>\t(test servo)\n";
	std::cout << "\tesc <throttle>\t(test ESC)\n";



}





int main(int argc, char *argv[]){

	/* parse arguments */
	if (argc == 1 ){
		std::cout << "No arguments provided, try pwm-test help\n";
		return 0;
	}else{
		if (strncmp(argv[1], "help", 8) == 0){
			printHelp();
			return 0;
		}
	}

	if (wiringPiSetup() == - 1){
		std::cout << "Failed to initialize wiringPi\n";
		return 0;
		
	}
	pinMode(PWM_pin, PWM_OUTPUT);

	
	



	return 0;
}
