#include <iostream>
#include "PIDController.h"

int main(int argc, char* argv[]) {
    if (argc < 4 || argc > 5) {
        std::cerr << "Usage:\n";
        std::cerr << "  " << argv[0] << " Kp Ki Kd -> Create PID controller object.\n";
        return 1;
    }
}