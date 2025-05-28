#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <unistd.h>
#include <arpa/inet.h>

/* defines all socket connections and functions for using those sockets */


char *server = "127.0.0.1";	/* change this to use a different server */
/* socket definitions */
struct sockaddr_in my_addr, remote_addr;
int port, fd, i, slen=sizeof(remote_addr);




/* output socket */



void outputSocketInit(){

	/* socket used to broadcast to others */
	if ((fd=socket(AF_INET, SOCK_DGRAM, 0)) == - 1){
		std::cout << "socket created\n";
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
	if (inet_aton(server, &remote_addr.sin_addr) == 0) {
		std::cout << "inet_aton() failed\n";
		exit(1);
	}

}


/* socket for deckBox */

void deckboxSocketInit(){



}















