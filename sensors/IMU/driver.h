#pragma once
#include <wiringPi.h>
#include <wiringPiI2C.h>
#include "RPi_Sensor.h"
#include "RPi_BNO055.h"
#include "utilitiy/imumaths.h"
#include <vector>
#include <iostream>


#define BNO055_addr 0x29

class BNO055{
    // The IMU object
    Adafruit_BNO055 IMU;

    // Vectors for the different data
    imu::Vector<3> Euler_Orientation, Angular_Velocity, Acceleration_Vector, Magnetic_Field_Strength, 
    Linear_Acceleration, Gravity_Vector;

    // Quaterion Orientation 
    imu::Quaternion Quaterion_Orientation;

    int8_t temperature;

    // Constructor
    BNO055();

    void IMU_calibration();
    imu::Vector<3> get_Euler_Orientation();
    imu::Quaternion get_Quaterion_Orientation();
    imu::Vector<3> get_Angular_Velocity();
    imu::Vector<3> get_Acceleration_Vector();
    imu::Vector<3> get_Magnetic_Field_Strength();
    imu::Vector<3> get_Linear_Acceleration();
    imu::Vector<3> get_Gravity_Vector();
    int8_t get_temperature();
};
