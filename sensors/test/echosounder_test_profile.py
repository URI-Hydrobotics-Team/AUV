#!/usr/bin/env python

from brping import Ping1D
import time
import matplotlib.pyplot as plt

frontPing = Ping1D()
bottomPing = Ping1D()

frontPing.connect_serial("/dev/ttyUSB0", 9600)
bottomPing.connect_serial("/dev/ttyUSB1", 9600)

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
    frontping_data = frontPing.get_profile()
    bottomping_data = bottomPing.get_profile()
    x_front = range(frontping_data)
    x_bottom = range(bottomping_data)

    if len(frontping_data) > 0 and len(bottomping_data) > 0:
        False
    else:
        print("Failed to get profile data")
    time.sleep(0.1)

plt.plot(x_front, frontping_data)
plt.plot(x_bottom, bottomping_data)

