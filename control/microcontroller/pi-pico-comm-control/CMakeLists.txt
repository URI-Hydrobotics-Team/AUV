cmake_minimum_required(VERSION 3.10)
project(PiPicoCommController)

# Set the C++ standard to C++11 (or higher)
set(CMAKE_CXX_STANDARD 11)

# Find the serial port library (you need to have libserialport installed)
find_package(PkgConfig REQUIRED)
pkg_check_modules(LIBSERIALPORT REQUIRED libserialport)

# Add the executable
add_executable(PiPicoCommController main.cpp PiPicoCommController.cpp)

# Link the serial port library
target_link_libraries(PiPicoCommController ${LIBSERIALPORT_LIBRARIES})

# Include the serial port headers
target_include_directories(PiPicoCommController PRIVATE ${LIBSERIALPORT_INCLUDE_DIRS})
