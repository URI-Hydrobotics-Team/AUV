# auv-hub
A program that runs on the Raspberry Pi (Primary Processor) and interfaces with sensors and the microcontroller.


## Communication Overview

The microcontroller (Pi Pico) running MicroPython will interface with the hub over serial via USB.<br>
Inputs recieved from sensors connected to the Pi directly and the microcontroller will be agregated by this program and made avaliable to other software over a socket connection.<br>
Input from other sources such as the deckbox are recieved via socket connections.

## Socket Structure
All sockets used for communication are connectionless, of the datagram type (UDP), and use the internet doman.<br>
Each message is a character string starting with the character '!'. Then a 3 character ID is next (e.g. "!HUB") which is used to designate the sender. Then a ' ' character is appended along with another 3 characters for message TYPE. Finally another space is appended along with the contents of the message. Messages can be up to 256 bytes long.
### Example Messages (for demonstration purposes)
	!HUB ERR failed to initialize sensors
	!HUB ALR leak detected
	!LOG ALR large log size 
	!DBX CMD thrust vect 20,40,60
In practice, these messages are likely going to be heavily abreviated in order to save message space
### Message TYPEs
	ERR	error
	ALR	alarm
	STS	status
	CMD 	command
	TEL	telemetry (raw data from sensors)
## Input and Output
Data enters the "hub" from "sources" (sensors, etc.). Input can be gathered from GPIO, sockets, etc.

### Sources
Driver code avaliable under AUV/sensors
- IMU (BNO055)
- Leak Sensor (BlueRobotics SOS Leak Sensor)
- Digital Pressure Sensor (MS5837)
- Single-Beam Sonar (Ping 1D)
- DVL (not confirmed)

### Output
Data leaves the hub via sockets and serial. This data includes values recieved from sources and a "status" message that sent in an interval over a socket to alert other recievers of that the hub an therefore the AUV's onboard computer is avaliable

### Other Devices
The Hub manages communications with devices such as:<br>
- Thrusters (Via PiPicoCommControl)
- Claw Motor Driver
- Torpedo Launcher


## Summary
A summary of the typical operations managed my this program include:
- Recieving sensor input from driver programs
- Broadcasting periodic data such as the AUV's status on an interval
- Broadacasting "continous" data such a location and velocity on a more often interval
- Broadcasting emergancy messages such as if a leak has occured when needed
- Recieving commands and controller input from the deckbox
- Translating controller input into velocity vectors
- Receiving input from PID loops
 


## TODO
- Implement IMU driver
- Implement microcontroller driver
- Implement leak sensor driver


## Compilation
### Dependecies
- standard C/C++ libraries
- wiringpi>
- adafruit sensor library

## Usage and Integration



