#! /usr/bin/env python
import time
from machine import Pin, PWM
import sys

MIN_MICROSECS = 1100
MAX_MICROSECS = 1900
STOP_MICROSECS = 1500
INITIALIZE_MICROSECS = 1500

### Thruster Setup ###
BPH = PWM(Pin(16), 60) #Front-Left-Angular-Vertical
BSH = PWM(Pin(20), 60) #Front-Right-Angular-Vertical
SH = PWM(Pin(11), 60) #Back-Vertical
Y = PWM(Pin(3), 60) #Front-Angular LR
PS = PWM(Pin(7), 60) #Left-FB
SS = PWM(Pin(26), 60) #Right-FB

thrusters = [BPH, BSH, SH, Y, PS, SS]
thruster_values = []

def initialize_thrusters():
    for thruster in thrusters:
        #Initialize each thruster with 2 second intervals.
        print('Initializing Thruster:', thruster)
        thruster.duty_ns(INITIALIZE_MICROSECS * 1000)
        time.sleep(2)

def update_thruster_vals(thruster_pwms):
    BPH.duty_ns(thruster_pwms[0] * 1000)
    BSH.duty_ns(thruster_pwms[1] * 1000)
    SH.duty_ns(thruster_pwms[2] * 1000)
    Y.duty_ns(thruster_pwms[3] * 1000)
    PS.duty_ns(thruster_pwms[4] * 1000)
    SS.duty_ns(thruster_pwms[5] * 1000)

while True:
    #Example Bytestring: PWM,1500.0,1500.0,1500.0,1500.1500.0,1500.0
    bytestring_command = sys.stdin.readline().strip()

    #parse into array to check the command
    words = bytestring_command.split(',')

    if bytestring_command.startswith("PWM"):
        print("Submitting PWMs to Thrusters")
        print('PWM Values:', words)
        
        #Make sure thrusters are already initialized
        if len(thruster_values) == 0: #array is empty
            initialize_thrusters()
        
        thruster_values = words[1:]
        
        thruster_values = list(map(int, thruster_values))
        
        update_thruster_vals(thruster_values)    
    else:
        print("Invalid command:", bytestring_command)

