#include "driver.h"
#include "../ping-cpp/src/hal/link/desktop/abstract-link.h"

int main(){
    // Ex: serial:/dev/ttyUSB0:...
    std::string port_num = "port used";
    auto port = AbstractLink::openUrl(port_num);

    // change these values to the correct values
    Sonar sonar(*port.get(), 1, 0, 0, 0);
    
    sonar.init();

    while(true){
        sonar.updateMessage();
        uint32_t distance = sonar.getDistance();
        uint16_t confidence = sonar.getConfidence();

        std::cout << "Distance: " << distance << "Confidence: " << confidence << "\n";
    }

    return -1;
}