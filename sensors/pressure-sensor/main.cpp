
#include <iostream>
#include "driver.h"

#define MS5837_ADDR 0x76

void test(){

	MS5837 sensor;
	sensor.init(MS5837_ADDR);

	while(1){
		std::cout << sensor.getPressure() << " mbar\n";
		std::cout << sensor.getTemperature() << " deg C\n";
		std::cout << sensor.getDepth() << " m\n";
		std::cout << sensor.getAltitude() << " m above mean sea level\n";

	}
}


int main(){

	test();

	return 0;
}
