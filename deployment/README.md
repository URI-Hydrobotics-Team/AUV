# Documentation for deploying Tardigrade's software

## Hardware Overview
Tardigrade has multiple onboard computers including
- Microcontroller (Raspberry Pi Pico 1)
- Primary Processor (Raspberry Pi 4 B)
- Computer Vision Processor (NVIDIA Jetson Nano 4GB)
- DeckBox (undetermined)
## Software Overview
Each computer 

```
Pi 4
	Ubuntu Server 24.04
		auv-hub 
		auv-log

Jetson
	Ubuntu 18.04
		OpenCV
		GStreamer
		jetson-detect (sends messsges to other devices about detected objects)

DeckBox
	Ubuntu 24.04
		deckbox-gui (PyQT)
		deckbox-controller-backend (provides controller input to PyQT gui)

Microcontroller
	MicroPython
		auv-pwm (pwm driver code, recieves messages from Pi4)

```
