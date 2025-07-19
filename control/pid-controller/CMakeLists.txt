cmake_minimum_required(VERSION 3.10)
project(PIDController)

# Set the C++ standard (use C++17 or higher if needed)
set(CMAKE_CXX_STANDARD 17)

# Add include directory for PiPicoCommController headers
include_directories(${PROJECT_SOURCE_DIR}/include)

# Add the source files for the project (main and PiPicoCommController source files)
add_executable(PIDController
    src/main.cpp
    src/PIDController.cpp
)

# Optionally, specify where to look for additional libraries (like libserialport)
target_include_directories(PIDController PRIVATE ${PROJECT_SOURCE_DIR}/include)

