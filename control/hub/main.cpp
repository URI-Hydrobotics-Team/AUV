//URI hydrobotics hub main project file
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/types.h>

#include "config.h"
#include "connections.h"
#include "modules.h"
#include "jetson.h"





std::string mode, arg1, arg2; //arguments
char status_str[256]; std::string status_string;

/* define devices here */
auv_tx_socket output_deckbox, output_log; //tx devices
auv_rx_socket input_deckbox; //rx devices

clock_t stopwatch;	

void printHelp(){
	std::cout << "HUB version: " << version_string << "\n";
	std::cout << "\nUSAGE:\n";
	std::cout << "\t\tauv-hub <mode> <arguments>\n"; 
	
	std::cout << "\tModes: help, run\n";
	std::cout << "\trun:\n";	

}


void initModules(){



}

void sendThruster(){


}

void sendPump(){

}

void checkSesors(){


}


void initDevices(){

	// NOTE: multicasting will be removed soon as it is useless in this implementation
		
	/* initalize devices */
	output_deckbox.init(DECKBOX_PORT_TX, MULTICASTGROUP); 
	output_log.init(LOG_PORT_TX, MULTICASTGROUP); 
	input_deckbox.init(DECKBOX_IP, DECKBOX_PORT_RX, MULTICASTGROUP);

}


void sendLeakAlert(){

	output_deckbox.transmit("!ALR Leak Detected");
	output_log.transmit("!ALR Leak Detected");
}





void sendTestString(){

	output_deckbox.transmit("!HUB message avaliable");
	output_log.transmit("!HUB message avaliable");



}

void updateStatus(){

	/*
		update status string
		acts as a keep alive
	*/
	time_t rawTime = time(NULL);
	char *time_str = ctime(&rawTime);
	time_str[strlen(time_str) - 1] = '\0'; //add terminating character

	status_string = "";	
	status_string += "!HUB STS ";
	status_string += time_str;
	

	std::cout << "status string: " << status_string << '\n';

}


void sendStatus(){
	std::cout << "sending status\n";
	updateStatus();
	output_deckbox.transmit(status_string.c_str());
	output_log.transmit(status_string.c_str());
}






void resetClock(){

	stopwatch = clock();
} 

double returnTimeStamp(){

	clock_t t = clock() - stopwatch;
	
	return ((double)t)/CLOCKS_PER_SEC;

}

void mainLoop(){
	initDevices();	// setup and bind socket devices
	resetClock(); // set stopwatch
	while (1){
		/* "we call this the loop" */

		/* check sensors */

		/*rec. from sockets */

		/* broadcast on sockets */
	
		if (returnTimeStamp() > STATUS_INTERVAL){
			/*send status string */
			resetClock();
			sendStatus(); 		
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


	output_deckbox.closefd();
	output_log.closefd();
	return 0;
}
