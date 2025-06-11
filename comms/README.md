# Comunications Structure for Tardigrade
In order to ensure reliable and efficent delivery of packets between the many socket connections running on the AUV, well defined parameters, listed here, are required

## Handling Multiple Connections
Each program (DeckBox, Hub, Log, etc.) must be able to handle multiple connections simultaneously while doing their own independent operations. There is no time for waiting long periods so connection management must be as efficient as possible. 

## The Problem
Transmitting a packet does not present much of an issue, especially because our packets are relively small (256 bytes), and because we are using UDP sockets which are connectionless. However, receiving packets can be costly time-wise if not implemented properly. 

## Possible ways of handling multiple connections

### Optimized Loop
Using a system call like "poll()" or "select()" allows the program to check if a socket is avalible for reading, recieving only occurs if the socket has data on it preventing delays. 

### fork()
Creating a child process may be more efficent but is more difficult to implement.


## Ports
To avoid the complication of UDP multicast, we will just use seperate ports for each connection, this is easy and pratical as we don't have a ton of connections to manage.

### AUV HUB
	TX to Deckbox (8100)<br>
	TX to logging (8101)<br>
	RX from Deckbox (8200)<br>
### Deckbox
	RX from AUV HUB (8100)<br>
	TX to logging (8103)<br>
	TX to AUV HUB (8200)<br>

### Logging
	RX from Deckbox (8103)<br>
	RX from AUV HUB (8101)<br>



