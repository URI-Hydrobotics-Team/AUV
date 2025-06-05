# Adafruit BNO055 driver implementation
## Overview
The BNO055 (also known as the IMU) is a 9-axis orientation sensor<br>
Outputs include:<br>
- Absolute Orientation (Euler Vector, 100Hz)
- Absolute Orientation (Quaterion, 100Hz)
- Angular Velocity Vector (100Hz)
- Acceleration Vector (100Hz)
- Magnetic Field Strength Vector (20Hz)
- Linear Acceleration Vector (100Hz)
- Gravity Vector (100Hz)
- Temperature (1Hz)<br>
The BNO055 collects these measurments, processes them, and makes them avaliable over an I2C interface<br>

### Our Setup
We will use BNO055 as our AUV's IMU. It will interface directly with the AUV's onboard computer (Rasp. Pi) over GPIO.<br>
This program will define a class that we can then use with the AUV hub program to collect measurements and sned them to other devices over a socket connection.

## Usage

## Compilation and Installation

## Dependencies

This project uses the following library:

* [**RPi_BNO055 library by CVino**](https://github.com/CVino/RPi_BNO055)
