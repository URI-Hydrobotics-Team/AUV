//URI hydrobotics hub main project file
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <time.h>


#include "connections.h"
#include "config.h"

std::string mode, arg1, arg2; //arguments
char status_string[256];

auv_tx_socket outputSocket;

/*
	Initial implementation:
	while other sources (sensors, pico, etc.) are in the works, this program will primaraly handle transmitting status data

*/



clock_t stopwatch;	


void printHelp(){
	std::cout << "HUB version: " << version_string << "\n";
	std::cout << "\nUSAGE:\n";
	std::cout << "\t\tauv-hub <mode> <arguments>\n"; 
	
	std::cout << "\tModes: help, run\n";
	std::cout << "\trun: <port>\n";	

}


void updateStatus(){

	/*
		update status string
		currently very crude
		a proper messaging format is in the works
	*/
	time_t rawTime = time(NULL);
	char *time_str = ctime(&rawTime);
	time_str[strlen(time_str) - 1] = '\0'; //add terminating character
	strncpy(status_string, "!HUB message avaliable", strlen("!HUB message avaliable"));

	//strncpy(status_string, time_str, sizeof(time_str));

	status_string[strlen(status_string) - 1] = '\0'; //add terminating character
	std::cout << "status string: " << status_string << '\n';

}


void sendStatus(){
	std::cout << "sending status\n";
	updateStatus();
	outputSocket.transmit(status_string);

}


void resetClock(){

	stopwatch = clock();
} 

double returnTimeStamp(){

	clock_t t = clock() - stopwatch;
	
	return ((double)t)/CLOCKS_PER_SEC;

}

void mainLoop(){
	//setup port for outputSocket
	outputSocket.init(std::stoi(arg1)); 


	
	resetClock();
	while (1){
		/* we call this "the loop" */
		/* code */
		
		if (returnTimeStamp() > STATUS_INTERVAL){
			resetClock();
			//updateStatus();
			sendStatus(); //defualts to sending every 100ms 
		}
		
		
	}	





}



int main(int argc, char *argv[]){

	if (argv[1] != NULL){
		mode = argv[1];
	}

	if (argv[2] != NULL){
		arg1 = argv[2];
	}
	if (argv[3] != NULL){
		arg2 = argv[3];
	}
	
	if (mode == "help"){
		printHelp();
	}


	if (mode == "run"){
		mainLoop();
		
	}


	outputSocket.closefd();
	return 0;
}
