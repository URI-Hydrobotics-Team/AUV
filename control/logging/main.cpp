#include <time.h>
#include <iostream>
#include <string>

#include "config.h"
#include "connections.h"
#include "files.h"


/* time */
time_t rawtime;
struct tm * timeinfo;
std::string time_str;

log_file logFile;


/*function declerations */


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
	
	/* test log */



	logFile.log("test");
	logFile.log("test");
	logFile.log("test");
	

	auv_rx_socket hubSocket;
	hubSocket.init(AUVHUBIP, AUVHUBPORT, AUVHUBGROUP); // setup hub socket
	std::string hub_socket_str;
	while (1){	
		hub_socket_str = hubSocket.rec(0); 
		logFile.log(hub_socket_str); // rec. data from hub socket


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

