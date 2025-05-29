#include <time.h>
#include <iostream>
#include <string>

#include "config.h"
#include "connections.h"
#include "files.h"



/* AUV HUB */
char *auv_hub_ip = AUVHUBIP;
int auv_hub_port = AUVHUBPORT;

/* time */
time_t rawtime;
struct tm * timeinfo;
std::string time_str;




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
	time_str_file = makeFileName(time_str);
	initLogFile(); //create file


	std::cout << "AUV logger version: " << version_string << "\n";
	std::cout << "Logger started at " << time_str << "\n";

	std::cout << "Writing file: '" << working_file << "'\n"; 
/*
	auv_rx_socket hubSocket;
	hubSocket.init("127.0.0.1", 8100); // setup hub socket
	while (1){	
		hubSocket.rec(1); // rec. data from hub socket
		//loop for testing
	}
*/
	//do other things

	
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


	return 0;
}

