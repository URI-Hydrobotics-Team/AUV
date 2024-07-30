#!/usr/bin/env python

from brping import Ping1D
import time

frontPing = Ping1D()
bottomPing = Ping1D()

frontPing.connect_serial("/dev/ttyUSB1", 115200)
bottomPing.connect_serial("/dev/ttyUSB2", 115200)

if frontPing.initialize() is False:
    print("Failed to initialize front facing echosounder!")
    exit(1)

if bottomPing.initialize() is False:
    print("Failed to initialize bottom facing echosounder!")
    exit(1)

print("------------------------------------")
print("Starting Ping..")
print("Press CTRL+C to exit")
print("------------------------------------")

input("Press Enter to continue...")

# Read and print distance measurements with confidence
while True:
    frontping_data = frontPing.get_distance()
    bottomping_data = frontPing.get_distance()
    if frontping_data:
        print("Distance: %s\tConfidence: %s%%" % (frontping_data["distance"], frontping_data["confidence"]))
    else:
        print("Failed to get front distance data")

    if bottomping_data:
        print("Distance: %s\tConfidence: %s%%" % (bottomping_data["distance"], bottomping_data["confidence"]))
    else:
        print("Failed to get bottom distance data")
    time.sleep(0.1)