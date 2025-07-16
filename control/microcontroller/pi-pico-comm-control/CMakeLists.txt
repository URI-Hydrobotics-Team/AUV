cmake_minimum_required(VERSION 3.10)
project(PiPicoCommController)

# Set the C++ standard (use C++17 or higher if needed)
set(CMAKE_CXX_STANDARD 17)

# Add include directory for PiPicoCommController headers
include_directories(${PROJECT_SOURCE_DIR}/include)

# Add lib directory for external libraries like libserialport
link_directories(${PROJECT_SOURCE_DIR}/lib)

# Find the serial port library (you need to have libserialport installed)
find_package(PkgConfig REQUIRED)
pkg_check_modules(LIBSERIALPORT REQUIRED libserialport)

# Add the source files for the project (main and PiPicoCommController source files)
add_executable(PiPicoCommController
    src/main.cpp
    src/PiPicoCommController.cpp
)

# Link the serial port library to your executable
target_link_libraries(PiPicoCommController ${LIBSERIALPORT_LIBRARIES})

# Include the serial port headers
target_include_directories(PiPicoCommController PRIVATE ${LIBSERIALPORT_INCLUDE_DIRS})

# Optionally, specify where to look for additional libraries (like libserialport)
target_include_directories(PiPicoCommController PRIVATE ${PROJECT_SOURCE_DIR}/include)

# If you need to set a custom serial port path, you can use this:
# set(SERIAL_PORT_PATH "/dev/ttyACM0")

