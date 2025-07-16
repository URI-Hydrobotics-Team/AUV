#include <time.h>
#include <iostream>
#include <cstring>

#include "config.h"
#include "../../lib/network/connections.h"
#include "files.h"


/* time */
time_t rawtime;
struct tm * timeinfo;
std::string time_str;

log_file logFile;


/*function declerations */

auv_rx_socket input_hub, input_deckbox;


void initDevices(){

	input_hub.init(HUB_PORT_RX); // setup hub socket
	input_deckbox.init(DECKBOX_PORT_RX);
}




void printHelp(){
	std::cout << "AUV logger version: " << version_string << "\n";
	std::cout << "\nUSAGE:";
	std::cout << "\t\tauv-log <mode> <arguments>\n"; 
		
	std::cout << "\tModes: help, log\n";
	std::cout << "\t[log] arguments: <record> <verbose level>\n";	




}




void log(){ 

	/* 
		Main function for defining which sockets to listen to
	*/
	// initialize time
	time(&rawtime);
  	timeinfo = localtime(&rawtime);
  	time_str =  asctime(timeinfo);	
	logFile.setTimeStr(time_str);
	logFile.init();

	std::cout << "AUV logger version: " << version_string << "\n";
	std::cout << "Logger started at " << time_str << "\n";

	std::cout << "Writing file: '" << logFile.getName() << "'\n"; 
	
	initDevices();
	std::cout << "Initalized Devices\n"; // without this there is a seg. fault, I have no idea why
	/* test log */



	logFile.log("test");
	logFile.log("test");
	logFile.log("test");
	
	
	std::string hub_socket_str;
	std::string deckbox_socket_str;
	
	while (1){
	
		/* HUB */
		if (input_hub.probe() > 0){
			hub_socket_str = input_hub.rec(0); 
			logFile.log(hub_socket_str); // rec. data from hub socket
		}
		/* DeckBox */
		if (input_deckbox.probe() > 0){
			deckbox_socket_str = input_deckbox.rec(0); 
			logFile.log(deckbox_socket_str); // rec. data from deckbox socket
		}
		//loop for testing
	}

	


	
}



int main(int argc, char *argv[]){
	
	std::string mode, arg1, arg2;
	if (argv[1] != NULL){
		mode = argv[1];
	}

	if (argv[2] != NULL){
		arg1 = argv[2];
	}
	if (argv[3] != NULL){
		arg2 = argv[3];
	}

	//display help
	if (mode == "help"){
		printHelp();
	}
	//display help
	if (mode == "log"){
		log();
		

	}
	
	//logFile.endLog();

	return 0;
}

