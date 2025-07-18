#include <iostream>
#include <wiringPi.h>
#define LEAK_PIN 17 // Use the actual GPIO pin you connected to

int main() {
    wiringPiSetupGpio(); // Initialize wiringPi with GPIO numbering
    pinMode(LEAK_PIN, INPUT); // Set the leak sensor pin as input
    pullUpDnControl(LEAK_PIN, PUD_DOWN); // Enable pull-down resistor

    while (1) {
        if (digitalRead(LEAK_PIN) == HIGH) {
            std::cout << "Leak detected!" << std::endl;
        } else {
            std::cout << "No leak detected." << std::endl;
        }
        delay(1000);
    }
    return 0;
}