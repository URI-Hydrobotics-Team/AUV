cmake_minimum_required(VERSION 3.13)
include(pico_sdk_import.cmake)
project(tardigrade_thruster_mcu C CXX ASM)

set(CMAKE_C_STANDARD 11)

set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(${PROJECT_NAME} 
    src/main.cpp
    src/thruster_config.cpp

)

pico_enable_stdio_usb(${PROJECT_NAME} 1)
pico_enable_stdio_uart(${PROJECT_NAME} 0)

pico_add_extra_outputs(${PROJECT_NAME})

target_link_libraries(${PROJECT_NAME}
    pico_stdlib
    pico_bootsel_via_double_reset
    hardware_pwm
    hardware_gpio
)

add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND cp ${CMAKE_SOURCE_DIR}/scripts/upload.sh ${CMAKE_BINARY_DIR}/upload.sh
)

add_custom_target(upload)

add_custom_command(TARGET upload
    COMMAND ${CMAKE_BINARY_DIR}/upload.sh
)