#g++ main.cpp driver.cpp -o ms5837-test-old  -l bcm2835
g++ main.cpp driver_pigpio.cpp -o ms5837-test -lpigpio
