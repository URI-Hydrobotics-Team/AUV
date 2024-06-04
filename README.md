### Follow to a "T"
[ROS Noetic Installation Tutorial](http://wiki.ros.org/noetic/Installation/Ubuntu)

[Ros Noetic Environment Installation and Configuration](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment)
(I highly suggest doing the catkin version of the above tutorials - http://wiki.ros.org/catkin)

### Install the Stonefish simulator
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

- Build and install the stonefish
    ```bash
    cd stonefish
    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Release ..
    make -j$(nproc)
    sudo make install
    ```

### Setup stonefish_mvp
[Stonefish MVP](https://uri-ocean-robotics.github.io/stonefish_mvp/)

### Running A Package

When running a package we use **"roslaunch \<package-name>  \<launch-file>"** packages have multiple nodes within them. Checkout [prequal_sim.launch](src/prequal_pkg/launch/prequal_sim.launch) and look for the \<node> elements. 

When we run a singular node though, we use **"rosrun \<package-name> \<launch-file>"** main difference is that your launch file will often be a python or cpp file (headers are also supported), your package name will usually be just the parent package of your package. For example; teleop-subscriber is built from [teleop.py](src/prequal_pkg/teleop/teleop.py) and is a child of the "prequal" package.

### Source your setup.sh file

First make sure you have sourced your setup.sh file in the devel directory. Then access the directory and make sure you are within the catkin workspace. 

```bash
source devel/setup.sh
```

If you want this to hold permanently follow below.

```bash
nano ~/.bashrc
```

Then add below to the file and save.

```bash
source source /opt/ros/ros-noetic/setup.sh
source /wor_catkin_ws/devel/setup.sh
```

### Running The Prequal-Sim Package (as example)

Terminal A Code:
```bash
roslaunch prequal prequal_sim.launch
```

To access something such as IMU data we need to run this in a seperate terminal. 

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
- Devin Hunsberger: dhunsberger@uri.edu
