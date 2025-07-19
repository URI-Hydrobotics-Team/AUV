# Raspberry Pi Serial Communication Control
By: Devin Hunsberger

# How to setup

Make a build directory

```bash
mkdir build
cd build
```

```bash
cmake ..
```

```bash
make
```

You can now run the executable in the build directory.

To udate the code hosted on the pico, modify the main.py file in the pico directory.

Then, upload via **rshell**

Make sure the pico is plugged in and rshell is installed.

This will copy the main.py file over to the pyboard directory hosted on a MicroPython-ed microcontroller.
```bash
rshell cp main.py /pyboard/
```

## Example Utilization

Initialize the thrusters

```bash

/PiPicoCommController init

```

Default's to `/dev/ttyACM0`

```bash

./PiPicoCommController 0.5 -0.2 0.8 -1.0 0.0 1.0

```

Or custom serial port

```bash

./PiPicoCommController 0.5 -0.2 0.8 -1.0 0.0 1.0 /dev/ttyACM1

```