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

#include "config.h"

std::string mode, arg1, arg2; //arguments
char status_string[256];
/*
	Initial implementation:
	while other sources (sensors, pico, etc.) are in the works, this program will primaraly handle transmitting status data

*/

/* socket definitions */
struct sockaddr_in my_addr, remote_addr;
int port, fd, i, slen=sizeof(remote_addr);
char *server = "127.0.0.1";	/* change this to use a different server */
char tx_buffer[256];





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
	strncpy(tx_buffer, status_string, sizeof(status_string));

	//sprintf(buf, "This is packet %d", i);
	if (sendto(fd, tx_buffer, strlen(tx_buffer), 0, (struct sockaddr *)&remote_addr, slen) == -1){
		perror("sendto");
	}

}

void socketInit(){
	port = std::stoi(arg1);
	if ((fd=socket(AF_INET, SOCK_DGRAM, 0))==-1){
		printf("socket created\n");
	}
	/* bind it to all local addresses and pick any port number */

	memset((char *)&my_addr, 0, sizeof(my_addr));
	my_addr.sin_family = AF_INET;
	my_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	my_addr.sin_port = htons(0);

	if (bind(fd, (struct sockaddr *)&my_addr, sizeof(my_addr)) < 0) {
		std::cout << "bind failed\n";
	}       


	memset((char *) &remote_addr, 0, sizeof(remote_addr));
	remote_addr.sin_family = AF_INET;
	remote_addr.sin_port = htons(port);
	if (inet_aton(server, &remote_addr.sin_addr)==0) {
		fprintf(stderr, "inet_aton() failed\n");
		exit(1);
	}

	sendStatus();

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
		socketInit();
		
	}


	close(fd);
	return 0;
}
