add_executable(main
        main.cpp
        )

target_link_libraries(main pico_stdlib hardware_adc hardware_pwm)

pico_enable_stdio_usb(main 1)

# create map/bin/hex file etc.
pico_add_extra_outputs(main)

# add url via pico_set_program_url
example_auto_set_url(main)
