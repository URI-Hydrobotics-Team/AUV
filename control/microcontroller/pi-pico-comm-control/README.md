# Raspberry Pi Serial Communication Control
By: Devin Hunsberger

# How to setup

Make a build directory

```bash
mkdir build
cd build
```

```bash
cmake
```

```bash
make
```



## Example Utilization

Default's to `/dev/ttyACM0`

```bash

./main 0.5 -0.2 0.8 -1.0 0.0 1.0

```

Or custom serial port

```bash

./main 0.5 -0.2 0.8 -1.0 0.0 1.0 /dev/ttyUSB1

```