# thruster_interface_board
Codebase for the MCU board, includes PWM, ADC etc.


### Get started
- Download the pico-sdk in your PC. For reference, follow Chapter 2 of the [Pico Setup Guide](https://datasheets.raspberrypi.com/pico/getting-started-with-pico.pdf)
- `git clone https://github.com/tjsos/thruster_interface_board.git` into the pico workspace.
- `mkdir build`
- `cd build`
- `export PICO_SDK_PATH=../../pico-sdk`
- `cmake ..`
- `make`
- Change directory into the main and `make -j4`.
- Drag and drop the main.uf2 file into the memory of the pico.
