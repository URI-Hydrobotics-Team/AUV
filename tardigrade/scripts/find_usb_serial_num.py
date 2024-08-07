import serial.tools.list_ports as port

portlist = list(port.comports())
for p in portlist:
    print(p)
