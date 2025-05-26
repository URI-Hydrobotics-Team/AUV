# AUV hub
A program that runs on the Raspberry Pi and interfaces with sensors and the microcontroller.


## Communication Overview

The microcontroller (Pi Pico) running MicroPython will interface with the hub over serial via USB.
Inputs recieved from sensors connected to the Pi directly and the microcontroller will be agregated by this program and made avaliable to other software over a socket connection.
Input from other sources such as the deckbox will be recieved via a socket.

## Socket Structure
All sockets used for communication are of the stream type (TCP) and use the internet doman.

### Terminology
Broadcaster: a server program that broadcasts data over a socket (e.g.) 


## Input and Output
### Input
Data enters the "hub" from "sources" (sensors, etc.). Input can be gathered from GPIO, sockets, etc.

### Output
Data leaves the hub via sockets and serial. This data includes values recieved from sources and a "status" message that sent in an interval over a socket to alert other recievers of that the hub an therefore the AUV's onboard computer is avaliable

## Compilation

## Usage and Integration



