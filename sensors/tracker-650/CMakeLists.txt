cmake_minimum_required(VERSION 3.10)
project(DVL)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add include directory
include_directories(include)

# Define the executable
add_executable(dvl_controller
    src/DVLController.cpp
    src/main.cpp
)

# Link necessary system libraries
target_link_libraries(dvl_controller pthread)
