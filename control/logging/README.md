# auv-log (logging suite)
A program that listens to broadcasting sockets and logs data. Acts as a blackbox and is useful for debugging purposes.

## Overview
Socket connections are defined in "connections.h". This program will call functions that check for connections on these sockets. The program then logs these raw messages to a file while also decoding them in order to provide message statistics.

### Data to log
Verbose levels can be specified with command line arguments.<br>
All messages transmitted via sockets on the network can be logged including messages from the deckbox, AUV's hub, etc.

### Logging format
	<entry> <date> <message>
### Integration and usage
	./auv-log log
## Compilation


