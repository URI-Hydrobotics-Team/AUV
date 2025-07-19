#include "PIDController.h"

PIDController::PIDController(double kp, double ki, double kd, double dt)
    : kp_(kp), ki_(ki), kd_(kd), dt_(dt), prev_error_(0), integral_(0) {}

double PIDController::compute(double setpoint, double measured_value) {
    double error = setpoint - measured_value;
    integral_ += error * dt_;
    double derivative = (error - prev_error_) / dt_;
    prev_error_ = error;

    return kp_ * error + ki_ * integral_ + kd_ * derivative;
}