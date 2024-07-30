# Pico Codebase 

## !! NOT PICO W !!

Custom codebase built using the Pico SDK as a microcontroller for our thrusters. 

## NOT A ROS PACKAGE

### If you don't see a pico-sdk directory in pico_workspace, first clone

```bash
git clone https://github.com/raspberrypi/pico-sdk
```

### Then clone the pico-examples repo.

```bash
git clone https://github.com/raspberrypi/pico-examples
```

## How to Build (Blink)

```bash
cd pico-examples #if not already there
mkdir build
cd build
export PICO_SDK_PATH = ../../pico-sdk
cmake ..
cd blink
make -j4
```

Now looking inside the pico_codebase/build/blink directory you should see a group of files such as this:

>CMakeFiles
>elf2uf2
blink.bin
blink.dis
blink.elf
blink.elf.map
blink.hex
blink.uf2
cmake_install.cmake
Makefile


### File Information

Only 2 of these files are really important to us, blink.uf2 and blink.elf

blink.elf -> Used by the debugger.
blink.uf2 -> "Config" file for the RP2040 processor on the pico. 

## Uploading to the Pico

### Windows, Linux Ubuntu (with UI), etc

- Holding the bootsel button on the pico, plug it in via USB

- A drive should now show-up, drag your uf2 file to the drive

- You should eject afterwards just incase.

### Systems that are headless (Ubuntu Server) or other weird OS's where you may need to mount

- Hold the bootsel button on the pico, plug it in via USB

- Mount drive
```bash
dmesg | tail
#Some indication of connection [whatever is here is important]
sudo mkdir -p /mnt/pico
sudo mount /dev/DRIVE /mnt/pico #DRIVE should be whatever was in brackets, also make sure to add "1" to the end, for the first partition
```

- Confirm the mount successful

```bash
ls /mnt/pico/
#Response should be like "INDEX.HTM INFO_UF2.TXT"
```

- Copy your uf2 file onto the Pico

```bash
sudo cp blink.uf2 /mnt/pico
sudo sync
```

- Unmount the Pico drive

```bash
sudo umount /mnt/pico
```

## For our case we are working with 6 thrusters, this will require the usage of the USB port, stdin, and PWM channels, which we can set to the individual pins. 

