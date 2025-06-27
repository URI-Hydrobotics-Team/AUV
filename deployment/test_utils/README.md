# Tardigrade Test Utilities
A collection of programs for testing the AUV's hardware. Designed to run on the Raspberry Pi (Primary Processor)

## Utilities
- pwm-test (for testing ESCs and other PWM devices)
- pressure-test (for testing the BlueRobotics MS5837)
- leak-test (for testing the BlueRobotics SOS leak sensor)
- imu-test (for testing the Adafruit BNO055)
- sonar-test (for testing the Ping 1D sonar)

## Compilation and Usage
Each of these utilities depends on the sensor driver implementation written for the AUV. You must have include these drivers before you can run the build.sh script

```
./build.sh

```
