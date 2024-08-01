from serial.tools import list_ports_linux

"""
Script for finding our Echosounder's serial numbers, simply run, pull the serial numbers, then apply them to the echosounders.launch file.
"""

device_list = list_ports_linux.comports()
for device in device_list:
    if (device.serial_number != None ):
        print(device.serial_number)