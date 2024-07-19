#! /usr/bin/env python
import time
from servo import Servo
import struct
import sys

MIN_MICROSECS = 1100.0
MAX_MICROSECS = 1900.0
STOP_MICROSECS = 1500.0
INITIALIZE_MICROSECS = 1500.0


### Thruster Setup ###
BPH = Servo(pin_id = 16, min_us = MIN_MICROSECS, max_us = MAX_MICROSECS) #Front-Left-Angular-Vertical
BSH = Servo(pin_id = 20, min_us = MIN_MICROSECS, max_us = MAX_MICROSECS) #Front-Right-Angular-Vertical
SH = Servo(pin_id = 11, min_us = MIN_MICROSECS, max_us = MAX_MICROSECS) #Back-Vertical
Y = Servo(pin_id = 3, min_us = MIN_MICROSECS, max_us = MAX_MICROSECS) #Front-Angular LR
PS = Servo(pin_id = 7, min_us = MIN_MICROSECS, max_us = MAX_MICROSECS) #Left-FB
SS = Servo(pin_id = 26, min_us = MIN_MICROSECS, max_us = MAX_MICROSECS) #Right-FB

thrusters = [BPH, BSH, SH, Y, PS, SS]
PWMs = []
######################

def initialize_thrusters():
    for thruster in thrusters:
        #Initialize each thruster with 1 second intervals.
        print('Initializing Thruster:', thruster)
        thruster.write_us(INITIALIZE_MICROSECS)
        time.sleep(1)

def update_thruster_vals(thruster_pwms):
    BPH.write_us(thruster_pwms[0])
    BSH.write_us(thruster_pwms[1])
    SH.write_us(thruster_pwms[2])
    Y.write_us(thruster_pwms[3])
    PS.write_us(thruster_pwms[4])
    SS.write_us(thruster_pwms[5])

while True:
    #Example Bytestring: PWM 1500.0,1500.0,1500.0,1500.1500.0,1500.0 or Initialize
    bytestring_command = sys.stdin.readline()
    print(bytestring_command)

    #unpacked_command = struct.unpack(f'<{len(bytestring_command)}s', bytestring_command)[0].decode()

    #parse into array to check the command
    unpacked_command = bytestring_command.strip()
    words = unpacked_command.split(',')
    print(words)

    if unpacked_command.startswith("PWM"):
        print("Submitting PWMs to Thrusters\n")
        
        #Make sure thrusters are already initialized
        if len(PWMs) == 0: #array is empty
            initialize_thrusters()
        
        thruster_values = words[1:]
        thruster_values = [float(i) for i in thruster_values]
        
        if thruster_values != PWMs: #submitted PWMs are changed, update thruster array.
            PWMs = thruster_values
            update_thruster_vals(PWMs)

    elif unpacked_command.startswith("Init"):
        print("Initializing Thrusters\n")
        initialize_thrusters()
    
    else:
        print("Invalid command.")

    

