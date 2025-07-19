#ifndef PIDCONTROLLER_H
#define PIDCONTROLLER_H

#include <vector>
#include <string>

class PIDController {
public:
    PIDController(double kp, double ki, double kd, double dt);

    double compute(double setpoint, double measured_value);

private:
    double kp_;
    double ki_;
    double kd_;
    double dt_;
    double prev_error_;
    double integral_;
};

#endif // PIDCONTROLLER_H
