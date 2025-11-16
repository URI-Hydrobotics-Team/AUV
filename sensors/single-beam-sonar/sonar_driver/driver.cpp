#include "driver.h"

// mode: 0 = manual, 1 = auto
// auto mode allows sonar to return message by itself, allowing the use of read function
// Also allow the sonar to choose scan distance and gain setting by itself
Sonar::Sonar(PingPort& port, bool mode, int distance_begin = 0, int distance_end = 0, int sound_speed): sonar(port){
    this->mode = mode;
    speed = sound_speed;
    dist1 = distance_begin;
    dist2 = distance_end;
}

bool Sonar::init(){
    if (!sonar.initialize()){
        std::cout << "not initialized";
        std::abort;
    }

    // auto mode: we do not need to set scan range for the sonar
    if (mode){
        sonar.set_mode_auto(1);
        sonar.set_speed_of_sound(speed);
    }
    // manual mode
    else {
        sonar.set_mode_auto(0);
        sonar.set_range(dist1, dist2);
        sonar.set_speed_of_sound(speed);
    }
}

void Sonar::updateMessage(){
    if(mode){
        sonar.waitMessage(Ping1dId::DISTANCE);  
    }
    else{
        sonar.request(Ping1dId::DISTANCE);
    }
}

uint32_t Sonar::getDistance(){
    uint32_t dis = sonar.distance_data.distance;
    return dis;
}

uint16_t Sonar::getConfidence(){
    uint16_t conf = sonar.distance_data.confidence;
    return conf;
}

std::tuple<uint32_t, uint16_t, uint32_t, uint32_t, uint32_t> Sonar::getMessageAttributes(){
    uint32_t dis = sonar.distance_data.distance;
    uint16_t conf = sonar.distance_data.confidence;
    uint32_t scan_start = sonar.distance_data.scan_start;
    uint32_t scan_length = sonar.distance_data.scan_length;
    uint32_t gain_setting = sonar.distance_data.gain_setting;

    std::tuple<uint32_t, uint16_t, uint32_t, uint32_t, uint32_t> info = std::make_tuple(dis, conf, scan_start, scan_length, gain_setting);

    return info;
}






