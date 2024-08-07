# MultipleMachines: How we will communicate from between all of our control boards.

## What is MultiMachine?
MultiMachines allows a user to utilize multiple "Slave" machines under 1 master machine as the controller. In our case the slaves will be: RaspberryPi4 with the name Tardigrade and the Nvidia Jetson Nano with the name ComputerVision. The master will be the surface computer. The RaspberryPi Pico is only connected to the Pi so it shouldn't have to be defined, (name will be ThrusterControl), 

## Setup: 

On the Master (surface computer) edit the bashrc file:

```bash
nano ~/.bashrc
```

And add these lines (You will need to manually set each device's IP address for this to work).:

```bash
export ROS_MASTER_URI=http://X.X.X.X:11311
export ROS_IP=X.X.X.X
```

On all the SLAVE devices:
Add the same lines, but change the 2nd IP to the local IP.

Example:
Surface IP: 1.1.1.1, Tardigrade IP: 2.2.2.2, ComputerVision IP 3.3.3.3

Surface .bashrc file:

```bash
export ROS_MASTER_URI=http://1.1.1.1:11311
export ROS_IP=1.1.1.1
```

Tardigrade .bashrc file:

```bash
export ROS_MASTER_URI=http://1.1.1.1:11311
export ROS_IP=2.2.2.2
```

ComputerVision .bashrc file:

```bash
export ROS_MASTER_URI=http://1.1.1.1:11311
export ROS_IP=3.3.3.3
```

## Our Specific Setup

We will not have a Surface system for RoboSUB,so we will set the Master to be the Tardigrade and the Slave to be the ComputerVision. If we want to eventually add a ROS UI for this we can but for competition it's not needed. 

# TODO:
- Add information in regards to running the nodes on separate machines. They will need separate launch files. 

## Sources: 
- http://wiki.ros.org/ROS/Tutorials/MultipleMachines
- https://github.com/husarion/static_docs_deprecated/blob/master/src/core2/tutorials/ros-tutorials/5-running-ros-on-multiple-machines.md