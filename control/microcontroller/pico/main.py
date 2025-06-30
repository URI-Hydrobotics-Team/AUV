#! /usr/bin/env python
import time
from machine import Pin, PWM
import sys

MIN_MICROSECS = 1100
MAX_MICROSECS = 1900
STOP_MICROSECS = 1500
INITIALIZE_MICROSECS = 1500

### Thruster Setup ###
BPH = PWM(Pin(16)) #Bow-Port-Heave
BPH.freq(60)
BSH = PWM(Pin(20)) #Bow-Starboard-Heave
BSH.freq(60)
SH = PWM(Pin(11), 60) #Stern-Heave
SH.freq(60)
Y = PWM(Pin(3)) #Yaw
Y.freq(60)
PS = PWM(Pin(7)) #Port-Surge
PS.freq(60)
SS = PWM(Pin(26)) #Starboard-Surge
SS.freq(60)

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
    print('Thruster PWM Values:', thruster_pwms)
    sys.stdout.write('Thrusters Updated\n')
    sys.stdout.flush()

initialize_thrusters()

while True:
    #Example Bytestring: PWM,1500,1500,1500,1500,1500,1500
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
        
        for val in thruster_values:
            if not (MIN_MICROSECS <= val <= MAX_MICROSECS):
                print(f"PWM {val} out of bounds!")
                break
        
        update_thruster_vals(thruster_values)    
    else:
        print("Invalid command: ", bytestring_command)
        sys.stdout.write('Invalid command: + {bytestring_command}\n')
        sys.stdout.flush()