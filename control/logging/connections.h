#include <cstring>

#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h> 
#include <fcntl.h> //include fentanyl
#include <poll.h>


/*
	Socket definitions
	only rx is needed as this program just logs data from sources
*/


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

	
		recvlen = recvfrom(fd, rx_buffer, 256, 0, (struct sockaddr *)&remote_addr, &addrlen);
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

			
		}

		shutdown(fd, 2);
		usleep(SOCKET_TIMEOUT); //sleep for 100ms or so
		return rx_buffer;
	}

	int probe(){

		/* poll a socket and check for data */
		struct pollfd fds[1];
    		fds[0].fd = fd;
    		fds[0].events = POLLIN;	
		int ret = poll(fds, 1, 10); //almost instant timeout
		 
		return ret;
		/* 
		Return Values:
			failure		< 0
			no data		= 0
			data avaliable	> 0
			
		 */

	
	}


	void init(const char *host, int port, const char *group){
		/* Initialize a socket */
		fd = socket(AF_INET, SOCK_DGRAM, 0);

		//set fd to non blocking
		int flags = fcntl(fd, F_GETFL, 0);
		fcntl(fd, F_SETFL, flags | O_NONBLOCK);

		/* enable multicast */
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


		memset((char *)&my_addr, 0, sizeof(my_addr));
		my_addr.sin_family = AF_INET;
		my_addr.sin_addr.s_addr = inet_addr(host);
		my_addr.sin_port = htons(port);
		if (bind(fd, (struct sockaddr *)&my_addr, sizeof(my_addr)) < 0) {
			//std::cout << "bind to " << host ":" << port << "failed\n";
			std::cout << "failed to bind socket\n";
		}

		std::cout << "Socket Initialized\n";
	}


};

