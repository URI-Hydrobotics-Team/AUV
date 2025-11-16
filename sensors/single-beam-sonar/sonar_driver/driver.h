# pragma once
#include "../ping-cpp/src/device/ping-device-ping1d.h"
#include "../ping-cpp/src/message/ping-message-ping1d.h"
#include <iostream>

class Sonar {
    public:
        // ping1d object
        Ping1d sonar;

        // mode of the sonar, 0 = manual, 1 = auto
        bool mode;


        // Scanning distance of sonar, beginning and ending
        int dist1, dist2;

        // sound speed of the speed of the sound the sonar use
        int speed;
        // ping_message* message;

    Sonar(PingPort& port, bool mode, int distance_begin = 0, int distance_end = 0, int sound_speed);

    // initialize the sonar
    bool init();

    // function to get the distance and confidence of the detected object
    uint32_t getDistance();
    uint16_t getConfidence();

    // used to update the internal values of the sonar
    void updateMessage();

    // used to see full attributes of the sonar's distance message
    std::tuple<uint32_t, uint16_t, uint32_t, uint32_t, uint32_t> getMessageAttributes();
};
