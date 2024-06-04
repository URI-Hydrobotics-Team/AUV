#MicroROS: How we will communicate from Pi to Pico

What is MicroROS: puts ROS2 onto a microcontroller (including the Pi Pico) making them part of the actual environment. And yes, we can also communicate with this environment with a separate ROS version! It uses a bridged communication architeture with a broker named the micro-ROS agent. Which is in charge of the interfacing between the ROS graph and the microcontroller. 

#Setup:

Install Dependencies on the host machine (Tardigrade in our case):

'''bash
sudo apt install build-essential cmake gcc-arm-none-eabi libnewlib-arm-none-eabi doxygen git python3
'''

Clone the SDKs for microROS:

'''bash
cd Your-src-Directory
git clone --recurse-submodules https://github.com/raspberrypi/pico-sdk.git
#git clone https://github.com/micro-ROS/micro_ros_raspberrypi_pico_sdk.git example repository
'''

Add the Pico-SDK directry location to your master CMakeLists.txt file. This is usually not recommended but 1, I hate having a dependency be based off of an IDE config and 2 the location should be standardized so here's your standardization.

'''bash

'''

#Sources: 
- https://ubuntu.com/blog/getting-started-with-micro-ros-on-raspberry-pi-pico 