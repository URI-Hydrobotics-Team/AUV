#ifndef PIPICOCOMMCONTROLLER_H
#define PIPICOCOMMCONTROLLER_H

#include <vector>
#include <string>

class PiPicoCommController {
public:
    static constexpr int PWM_MIN = 1100;
    static constexpr int PWM_MAX = 1900;

    // Convert values from [-1.0, 1.0] range to PWM range [1100, 1900]
    static std::vector<int> convertToPWM(const std::vector<float>& input_values);

    // Format PWM values as a string like "PWM,1500,1500,1500,1500,1500,1500"
    static std::string encodeToCommand(const std::vector<int>& pwm_values);

    static void sendAndReceive(const std::string& data, const std::string& port_name);
};

#endif // PIPICOCOMMCONTROLLER_H
