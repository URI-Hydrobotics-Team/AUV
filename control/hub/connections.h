#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <fcntl.h> //include fentanyl

/* defines all socket connections and functions for using those sockets */



void initStr(char *str, int len){
	/* initiate a string with a series of null terminators */
	for (int i = 0; i < len; i++){
		str[i] = 0;
	}
}



class auv_tx_socket{

	private:
		char *server= "127.0.0.1";	/* change this to use a different server */
		struct sockaddr_in my_addr, remote_addr;
		int port, fd, i, slen=sizeof(remote_addr);
		char tx_buffer[256];

	public:
		void init(int port, const char *group){

		/* socket used to broadcast to others */
		if ((fd=socket(AF_INET, SOCK_DGRAM, 0)) == - 1){
			std::cout << "socket created\n";
		}
		/* bind it to all local addresses and pick any port number */

		memset((char *)&my_addr, 0, sizeof(my_addr));
		my_addr.sin_family = AF_INET;
		my_addr.sin_addr.s_addr = inet_addr(group);
		my_addr.sin_port = htons(0);


		int reuse = 1;
    		if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, (const char*)&reuse, sizeof(reuse)) < 0){
        		perror("setsockopt(SO_REUSEADDR) failed");
		}
    		if (setsockopt(fd, SOL_SOCKET, SO_REUSEPORT, (const char*)&reuse, sizeof(reuse)) < 0){
        		perror("setsockopt(SO_REUSEPORT) failed");
		}


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
		void transmit(const char *bufferIn){
			initStr(tx_buffer, 256); 
			strncpy(tx_buffer, bufferIn, strlen(bufferIn));
			if (sendto(fd, tx_buffer, strlen(tx_buffer), 0, (struct sockaddr *)&remote_addr, slen) == -1){
				std::cout << "error sendto\n";
			}

		}

		void closefd(){
			close(fd);
		}



};








class auv_rx_socket{
	private:
		struct sockaddr_in my_addr;	/* our address */
		struct sockaddr_in remote_addr;	/* remote address */
		socklen_t addrlen = sizeof(remote_addr);		/* length of addresses */
		int recvlen;			/* # bytes received */
		int fd;				/* the socket */
		char rx_buffer[256];
	public:

	char* rec(int print){
		/* first check fd avaliabilty */
		

	
		recvlen = recvfrom(fd,rx_buffer, 256, 0, (struct sockaddr *)&remote_addr, &addrlen);
		
		if (recvlen > 0) {
			/* 
			define how the message is handled 
			we would like to have a "message box" in the interface where raw message data is put
			*/
			rx_buffer[recvlen] = 0;
			if (print == 1){
				printf("received %d bytes\n", recvlen);
				printf("received message: \"%s\"\n",rx_buffer);
			}
			shutdown(fd, 2);
			usleep(SOCKET_SLEEP); //sleep for 100ms or so
			return rx_buffer;
			
		}
	
	
	}



	void init(const char *host, int port, const char *group){
		/* Initialize a socket */
		fd = socket(AF_INET, SOCK_DGRAM, 0);

		//set fd to non blocking
		int flags = fcntl(fd, F_GETFL, 0);
		fcntl(fd, F_SETFL, flags | O_NONBLOCK);


		//set socket timeout
		struct timeval timeout={0,SOCKET_TIMEOUT};  //tv_sec, tv_usec
		setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, (char*)&timeout,sizeof(struct timeval));

		

		memset((char *)&my_addr, 0, sizeof(my_addr));
		my_addr.sin_family = AF_INET;
		my_addr.sin_addr.s_addr = inet_addr(host);
		my_addr.sin_port = htons(port);
		/* multicast support */
		int reuse = 1;
    		if (setsockopt(fd, SOL_SOCKET, SO_REUSEPORT, (const char*)&reuse, sizeof(reuse)) < 0){
        		perror("setsockopt(SO_REUSEPORT) failed");
		}
    		if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, (const char*)&reuse, sizeof(reuse)) < 0){
        		perror("setsockopt(SO_REUSEADDR) failed");
		}

		struct ip_mreq mreq;
   		mreq.imr_multiaddr.s_addr = inet_addr(group);
    		mreq.imr_interface.s_addr = inet_addr(host);
    		if (setsockopt(fd, IPPROTO_IP, IP_ADD_MEMBERSHIP, (char*) &mreq, sizeof(mreq)) < 0){
        		perror("failed to seup multicastt");
    		}


		/* bind the socket */

		if (bind(fd, (struct sockaddr *)&my_addr, sizeof(my_addr)) < 0) {
			//std::cout << "bind to " << host ":" << port << "failed\n";
			std::cout << "failed to bind socket\n";
		}

		std::cout << "Socket Initialized\n";
	}


};








