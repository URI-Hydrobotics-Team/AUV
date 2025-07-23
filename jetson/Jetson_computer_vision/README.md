# Jetson Nano computer vision 
This folder contains codes for running object detection and visual odometry on the Jetson Nano

# Acknowledgements
This project utilizes a [fork verison of the ORB_SLAM2_CUDA library by dusty-nv](https://github.com/dusty-nv/ORB_SLAM2_CUDA)

The [original ORB_SLAM2_CUDA library](https://github.com/thien94/ORB_SLAM2_CUDA) is created by thien94

The [original ORB_SLAM2 library](https://github.com/raulmur/ORB_SLAM2) is created by raulmur

# Dependencies
- ORB_SLAM2_CUDA
- OpenCV 4.12
- Eigen3
- Pangolin

# Install
Run the following command:

`git clone https://github.com/URI-Hydrobotics-Team/AUV.git`

# Usage
1. `cd AUV/jetson/Jetson_computer_vision`
2. Replace the path with the correct path where ORB_SLAM2_CUDA is located within the CMakeLists.txt `set(ORB_SLAM2_CUDA_DIRS "path to ORB_SLAM2_CUDA")`
3. `mkdir build && cd build`
4. `cmake ..`
5. `make`
6. `./Detection`
