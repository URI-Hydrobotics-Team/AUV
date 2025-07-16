#! /usr/bin/env python
import time
from machine import Pin, PWM
import sys

MIN_MICROSECS = 1100
MAX_MICROSECS = 1900
STOP_MICROSECS = 1500
INITIALIZE_MICROSECS = 1500

### Thruster Setup ###
BPH = PWM(Pin(0), freq = 50) #Bow-Port-Heave
BSH = PWM(Pin(2), freq = 50) #Bow-Starboard-Heave
SH = PWM(Pin(4), freq = 50) #Stern-Heave
Y = PWM(Pin(6), freq = 50) #Yaw
PS = PWM(Pin(8), freq = 50) #Port-Surge
SS = PWM(Pin(14), freq = 50) #Starboard-Surge

thrusters = [BPH, BSH, SH, Y, PS, SS]
thruster_names = ['BPH', 'BSH', 'SH', 'Y', 'PS', 'SS']
thruster_values = []

def initialize_thrusters():
    for thruster in thrusters:
        # Initialize each thruster with 2 second intervals.
        print('Initializing Thruster:', thruster_names[thrusters.index(thruster)])
        thruster.duty_ns(INITIALIZE_MICROSECS * 1000)
        thruster_values.append(INITIALIZE_MICROSECS)
        time.sleep(2)
    print('All Thrusters Initialized')

def update_thruster_vals(thruster_pwms):
    BPH.duty_ns(thruster_pwms[0] * 1000)
    BSH.duty_ns(thruster_pwms[1] * 1000)
    SH.duty_ns(thruster_pwms[2] * 1000)
    Y.duty_ns(thruster_pwms[3] * 1000)
    PS.duty_ns(thruster_pwms[4] * 1000)
    SS.duty_ns(thruster_pwms[5] * 1000)
    print('Thruster PWM Values:', thruster_pwms)
    print('Thrusters Updated')

initialize_thrusters()

while True:
    # Example Bytestring: PWM,1500,1500,1500,1500,1500,1500
    try:
        bytestring_command = sys.stdin.readline().strip()
    except Exception as e:
        print("Error reading from stdin: ", e)
        continue
    
    # Skip empty lines
    if not bytestring_command:
        continue

    words = bytestring_command.split(',')
    print('Received command:', words)

    if bytestring_command.startswith("PWM"):
        print("Submitting PWMs to Thrusters")
        print('PWM Values:', words)

        thruster_values = words[1:]
        print(thruster_values)
        try:
            thruster_values = list(map(int, thruster_values))
        except ValueError:
            print("Error: PWM values must be integers")
            continue

        for val in thruster_values:
            if not (MIN_MICROSECS <= val <= MAX_MICROSECS):
                print(f"PWM {val} out of bounds!")
                break
        else:
            # Only update if all values are valid
            update_thruster_vals(thruster_values)
    else:
        print("Invalid command:", bytestring_command)
