# Tutorial for the Use of Installation, Setup, and Running

I also suggest you checkout the [Tardigrade Setup Docs](/src/Tardigrade%20Setup%20Docs/), each package also has it's own README, just check each directory, this will give you a description of it's ROS utilization or purpose. 

### Follow to a "T"
[ROS Noetic Installation Tutorial](http://wiki.ros.org/noetic/Installation/Ubuntu)

[Ros Noetic Environment Installation and Configuration](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment)
(I highly suggest doing the catkin version of the above tutorials - http://wiki.ros.org/catkin)

## Install the Stonefish simulator
- We use [Stonefish](https://stonefish.readthedocs.io/en/latest/install.html) Simulator. You can clone it from [here](https://github.com/uri-ocean-robotics/stonefish), a fork from the [original_repo](https://github.com/patrykcieslak/stonefish).

- Download the stonefish simulator **to another location outside your ROS workspace (in your "home" folder is acceptable)**
```bash
git clone https://github.com/uri-ocean-robotics/stonefish
```

- Install dependencies using `sudo apt install` (instruction from the [Stonefish](https://github.com/patrykcieslak/stonefish))
    * **OpenGL Mathematics library** (libglm-dev, version >= 0.9.9.0)
    * **SDL2 library** (libsdl2-dev, may need the following fix!)
        1. Install SDL2 library from the repository.
        2. `cd /usr/lib/x86_64-linux-gnu/cmake/SDL2/`
        3. `sudo vim sdl2-config.cmake`
        4. Remove space after "-lSDL2".
        5. Save file.
    * **Freetype library** (libfreetype6-dev)

- Build and install the stonefish simulator
    ```bash
    cd stonefish
    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Release ..
    make -j$(nproc)
    sudo make install
    ```

## Setup stonefish_mvp & other mvp packages
[Stonefish MVP](https://uri-ocean-robotics.github.io/stonefish_mvp/)

```bash
git clone https://github.com/uri-ocean-robotics/mvp_msgs --single-branch noetic-devel
git clone https://github.com/uri-ocean-robotics/mvp_control --single-branch noetic-devel
git clone https://github.com/uri-ocean-robotics/mvp_mission --single-branch noetic-devel
```

```bash
rosdep install --from-paths src --ignore-src --rosdistro ${ROS_DISTRO} -y
```

### Running A Package
When running a package we use **"roslaunch \<package-name>  \<launch-file>"** packages have multiple nodes within them. Checkout [prequal_sim.launch](src/prequal_pkg/launch/prequal_sim.launch) and look for the \<node> elements. 

When we run a singular node though, we use **"rosrun \<package-name> \<launch-file>"** main difference is that your launch file will often be a python or cpp file (headers are also supported), your package name will usually be just the parent package of your package. For example; teleop-subscriber is built from [teleop.py](src/prequal_pkg/teleop/teleop.py) and is a child of the "prequal" package.

### Source your setup.sh file
First make sure you have a setup._ file in the devel directory. Check the current shell you are using, this will determine your optimal source file.

```bash
echo $SHELL #my output was /bin/bash so I will be sourcing the setup.bash file located in the "dev" directory
```
Based upon the output that will determine your source file.

```bash
source devel/setup._ #In my case setup.bash
```

If you want this to hold "permanently" follow below.

```bash
sudo nano ~/.bashrc
```

Then add below to the end of the file and save. (I don't remember if this will hold following a power off)

```bash
source /absolute_path/devel/setup.__ #The one inside your catkin workspace
```

# Running The Prequal-Sim Package (as example)
Terminal A Code:
```bash
roslaunch prequal prequal_sim.launch
```

To access something such as IMU data we should run this in a seperate terminal. 

Terminal B Code:
```bash
rostopic echo /tardigrade/imu/stonefish/data
```
This will constantly print various kinematics data such as angular velocity, linear acceleration, orientation, and the like. 

Example output:
```bash
header: 
seq: 1444
stamp: 
    secs: 1717158619
    nsecs: 440290000
frame_id: "tardigrade/IMU"
orientation: 
    x: -0.0077347295535119456
    y: -0.032189911206308534
    z: -0.2604228830489195
    w: 0.9649268913030419
    orientation_covariance: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
angular_velocity: 
    x: -0.008469753045409978
    y: -0.10136860763581095
    z: 0.17333379974822147
    angular_velocity_covariance: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
linear_acceleration: 
    x: 0.01051154741984005
    y: 0.002664739337900841
    z: 0.21141480818570924
    linear_acceleration_covariance: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
---
```


Very similar to steps followed in [CameraAccess.md](src/tardigrade/Tardigrade Setup Docs/CameraAccess.md), you can utilize RQT's launch option to launch separate nodes and packages, for example auto.py located in the scripts section. 

# Accessing the Tardigrade (through a Router) and starting Autonomous

## Connect Via Router
Getting access to the tardigrade can in some cases be difficult for new users. Our setup will go like this. Surface laptop -> Ethernet -> Netgear Router -> 2.4Ghz Wifi -> Tardigrade. 

!!KEEP IN MIND THIS CONNECTION WILL LIKELY NOT HOLD UNDERWATER 2.4GHZ WIFI CAN ONLY PENETRATE A FEW INCHES OF WATER!!

Steps:
- Power on the router
- Power on tardigrade
- Connect surface PC to router via ethernet.
- Wait and pray for a new device connection to the network.
- SSH

Some things to consider while doing this is that you will need to provide wifi to your router, in our case I've designed and built a deckbox, it holds a router, raspberyy pi, 7" touch screen display, and some I/O. This was then all put into a small pelican case. Power is distributed by using a BlueRobotics 14.7v 10 amp battery over an XT90 connector, which is flight safe. The battery also works as a spare in the case another fails in the robot. The Raspberry Pi is simply connected to the Router WAN port running Linux Ubuntu (currently in Raspbian which doesn't seem to work in providing DCHP to the network) to provide wifi. Simply just connect the Raspi to whatever local Wifi that's available and there... internet access for you surface laptop and robot! 

I'll add photos and schematics when I get a good chance as that's a project in itself. 

## Connect Over LAN Ethernet
This, depending on your situation can be far easier or far more difficult. In my case it was difficult to determine the source of the problem but easy to fix. Make sure that when plugging into the Pi you set your IPv4 from Automatic to "Shared With Other __" devices/computers/whatever. Otherwise steps are basically the same:

- Power on the tardigrade
- Plug Ethernet into Surface laptop
- Wait and pray the connection occurs
- SSH

The nice thing about this form of connection is that if you are running Ubuntu Linux, it can out of the box utilizing both LAN and Wifi at the same time (if you have 2 modules or a wifi dongle) so you can connect to the robot through a DCHP connect (laptop LAN to robot LAN) and keep an internet connection to whatever local wifi is available. This will also provide your robot wifi in the case you have a remote repository storing your codebase, similar to what we have setup here.

These steps also hold if you utilize a physical tether. Keep in mind that many teams have issues where pulling the tether off the robot in some cases causes the robot to full stop. Make sure to test extensively and debug. 

## Troubleshooting
I suggest accessing the router by using it's local IP (generally 192.168.0.1 or 192.168.1.1). And then checking the "Connected Devices" list. There you will see your laptop and hopefully the tardigrade. Use the IP listed next the Tardigrade in the list to SSH into. You shoud hopefully now have access to the Tardigrade for launching. I also HIGHLY suggest you SSH via VSCode it just makes things alot easier and you get a file explorer and text editor rather than just a terminal, you can also setup a SSH config so it's easy as pressing 2 buttons to SSH back into the Tardigrade.

# 


- Devin Hunsberger: dhunsberger@uri.edu
