g++ main.cpp ../../sensors/pressure-sensor/driver.cpp ../microcontroller/pi-pico-comm-control/src/PiPicoCommController.cpp -o auv-hub -l bcm2835 -l wiringPi -l serialport
