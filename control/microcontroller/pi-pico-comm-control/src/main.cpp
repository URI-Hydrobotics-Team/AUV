#include <iostream>
#include <vector>
#include <string>
#include <cstdlib> // for std::stof
#include "PiPicoCommController.h" // Ensure this header exists

int main(int argc, char* argv[]) {
    if (argc < 7 || argc > 8) {
        std::cerr << "Usage: " << argv[0] << " thruster1 thruster2 thruster3 thruster4 thruster5 thruster6 [serial_port]\n";
        std::cerr << "Each thruster value must be between -1.0 and 1.0.\n";
        return 1;
    }

    std::vector<float> input_values;
    for (int i = 1; i <= 6; ++i) {
        float val;
        try {
            val = std::stof(argv[i]);
        } catch (const std::invalid_argument& e) {
            std::cerr << "Error: Invalid float value for thruster" << i << ": " << argv[i] << "\n";
            return 1;
        }

        if (val < -1.0f || val > 1.0f) {
            std::cerr << "Error: Thruster value out of range (-1.0 to 1.0): " << val << "\n";
            return 1;
        }
        input_values.push_back(val);
    }

    // Use the provided serial port or default
    std::string serial_port = (argc == 8) ? argv[7] : "/dev/ttyACM0";

    // Convert the input values to PWM
    std::vector<int> pwm_values = PiPicoCommController::convertToPWM(input_values);

    // Format the PWM values as a command string
    std::string pwm_command = PiPicoCommController::encodeToCommand(pwm_values) + "\n";

    PiPicoCommController::sendAndReceive(pwm_command, serial_port); 

    return 0;
}
