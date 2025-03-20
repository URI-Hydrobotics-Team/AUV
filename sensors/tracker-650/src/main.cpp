#include "DVLController.h"
#include <iostream>

int main() {
    DVLController dvl("255.255.255.255", 27000, 50000);  // Broadcast IP, DVL Port, Listen Port

    dvl.startListening();

    std::cout << "Sending test command to DVL...\n";
    dvl.sendCommand("SEND-DVPDL ON");

    std::this_thread::sleep_for(std::chrono::seconds(10)); // Listen for broadcasts
    dvl.stopListening();

    return 0;
}
