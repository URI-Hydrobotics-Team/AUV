#include "PiPicoCommController.h"
#include <iostream>
#include <sstream>
#include <libserialport.h>
#include <algorithm>

// Convert values from [-1.0, 1.0] range to PWM range [1100, 1900]
std::vector<int> PiPicoCommController::convertToPWM(const std::vector<float>& input_values) {
    std::vector<int> pwm_values;
    for (float value : input_values) {
        std::cout << "DEBUG: raw input value = " << value << std::endl; // ADD THIS LINE

        // Clamp input between -1.0 and 1.0
        value = std::max(-1.0f, std::min(1.0f, value));

        // Map from [-1.0, 1.0] to [1100, 1900]
        int pwm = static_cast<int>(((value + 1.0f) / 2.0f) * (PWM_MAX - PWM_MIN) + PWM_MIN);


        std::cout << "DEBUG: clamped = " << value << ", pwm = " << pwm << std::endl; // AND THIS LINE
        pwm_values.push_back(pwm);
    }
    return pwm_values;
}

// Format PWM values as a string like "PWM,1500,1500,1500,1500,1500,1500"
std::string PiPicoCommController::encodeToCommand(const std::vector<int>& pwm_values) {
    std::stringstream command;
    command << "PWM";
    for (int pwm : pwm_values) {
        command << "," << pwm;
    }
    std::cout << "DEBUG: command = " << command.str() << std::endl; // ADD THIS LINE
    return command.str();
}

// Send the PWM command to the Pi Pico over USB serial
void PiPicoCommController::sendAndReceive(const std::string& data, const std::string& port_name) {
    struct sp_port *port;
    if (sp_get_port_by_name(port_name.c_str(), &port) != SP_OK) {
        std::cerr << "Error: Could not find the serial port " << port_name << std::endl;
        return;
    }

    if (sp_open(port, SP_MODE_READ_WRITE) != SP_OK) {
        std::cerr << "Error: Could not open port " << port_name << std::endl;
        return;
    }

    // Serial port settings
    sp_set_baudrate(port, 115200);
    sp_set_bits(port, 8);
    sp_set_parity(port, SP_PARITY_NONE);
    sp_set_stopbits(port, 1);

    // Write data
    std::string command_with_newline = data + "\n";
    int bytes_written = sp_blocking_write(port, command_with_newline.c_str(), command_with_newline.size(), 1000);
    if (bytes_written < 0 || bytes_written != static_cast<int>(command_with_newline.size())) {
        std::cerr << "Error: Failed to send data to Pico!" << std::endl;
        sp_close(port);
        return;
    }

    std::cout << "Data sent to Pico: " << command_with_newline;

    // Read response
    char response[256];
    int bytes_read = sp_blocking_read(port, response, sizeof(response) - 1, 1000);
    if (bytes_read > 0) {
        response[bytes_read] = '\0';
        std::cout << "Response from Pico: " << response << std::endl;
    } else {
        std::cerr << "Error: Failed to read response from Pico!" << std::endl;
    }

    sp_close(port);
}
