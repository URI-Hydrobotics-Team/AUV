# AUV hub
A program that runs on the Raspberry Pi and interfaces with sensors and the microcontroller.


## Communication Overview

The microcontroller (Pi Pico) running MicroPython will interface with the hub over serial via USB.
Inputs recieved from sensors connected to the Pi directly and the microcontroller will be agregated by this program and made avaliable to other software over a socket connection.
Input from other sources such as the deckbox will be recieved via a socket.

## Compilation

## Usage and Integration



