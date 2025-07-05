//URI hydrobotics hub main project file
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/types.h>

#include "config.h"
#include "connections.h"
#include "modules.h"
#include "jetson.h"





std::string mode, arg1, arg2; //arguments
char status_str[256]; std::string status_string;

/* define network connections here */
auv_tx_socket output_deckbox, output_log; //tx devices
auv_rx_socket input_deckbox; //rx devices

/* define sensors here */

//BNO055 sensor_imu; //using pigpio
leak_sensor_t sensor_leak; //using WiringPi
MS5837 sensor_pressure; //using bcm2835

/* vars */
//IMU
/*
imu::Vector<3> euler_orientation, angular_velocity, acceleration_vect, magnetic_field_strength, linerar_acceleration, gravity_vector;
imu::Quaternion quaterion_orientation; 
*/
//leak 
int leak_status; //1 = leak, 0 = no leak

//pressure
float pressure, temperature, depth, altitude;



clock_t stopwatch;	

void printHelp(){
	std::cout << "HUB version: " << version_string << "\n";
	std::cout << "\nUSAGE:\n";
	std::cout << "\t\tauv-hub <mode> <arguments>\n"; 
	
	std::cout << "\tModes: help, run\n";
	std::cout << "\trun:\n";	

}


void initModules(){

	sensor_pressure.init();
	sensor_leak.cold_init();
	//sensor_imu.cold_init();

}

void sendThruster(){


}

void sendPump(){



}

void getSensors(){
	sensor_pressure.read();
	pressure = sensor_pressure.getPressure();
	temperature = sensor_pressure.getPressure();
	depth = sensor_pressure.getDepth();
	altitude = sensor_pressure.getAltitude();
	leak_status = sensor_leak.probe();
	

	/* read all necesarry data */



}

void logPressure(){
	std::string str = "!HUB STS ";
	str += std::to_string(pressure); str += ' '; str += std::to_string(temperature); str += ' '; str += std::to_string(depth); str += ' '; str += std::to_string(altitude);
	output_log.transmit(str.c_str());
	//std::cout << str << '\n';
}


void initDevices(){

	// NOTE: multicasting will be removed soon as it is useless in this implementation
		
	/* initalize devices */
	output_deckbox.init(DECKBOX_PORT_TX, MULTICASTGROUP); 
	output_log.init(LOG_PORT_TX, MULTICASTGROUP); 
	input_deckbox.init(DECKBOX_IP, DECKBOX_PORT_RX, MULTICASTGROUP);

}


void sendLeakAlert(){

	output_deckbox.transmit("!ALR Leak Detected");
	output_log.transmit("!ALR Leak Detected");
}





void sendTestString(){

	output_deckbox.transmit("!HUB message avaliable");
	output_log.transmit("!HUB message avaliable");



}

void updateStatus(){

	/*
		update status string
		acts as a keep alive
	*/
	time_t rawTime = time(NULL);
	char *time_str = ctime(&rawTime);
	time_str[strlen(time_str) - 1] = '\0'; //add terminating character

	status_string = "";	
	status_string += "!HUB STS ";
	status_string += time_str;
	

	std::cout << "status string: " << status_string << '\n';

}


void sendStatus(){
	std::cout << "sending status\n";
	updateStatus();
	output_deckbox.transmit(status_string.c_str());
	output_log.transmit(status_string.c_str());
}






void resetClock(){

	stopwatch = clock();
} 

double returnTimeStamp(){

	clock_t t = clock() - stopwatch;
	
	return ((double)t)/CLOCKS_PER_SEC;

}

void mainLoop(){
	initModules();
	initDevices();	// setup and bind socket devices
	resetClock(); // set stopwatch
	while (1){
		/* "we call this the loop" */

		/* check sensors */
		getSensors();
		/*rec. from sockets */

		/* broadcast on sockets */
	
		if (returnTimeStamp() > STATUS_INTERVAL){
			/*send status string */
			resetClock();
			sendStatus(); 
			logPressure();	
	
			output_log.transmit("teststring");
		}
		
		
	}	





}



int main(int argc, char *argv[]){

	if (argv[1] != NULL){
		mode = argv[1];
	}

	if (argv[2] != NULL){
		arg1 = argv[2];
	}
	if (argv[3] != NULL){
		arg2 = argv[3];
	}
	
	if (mode == "help"){
		printHelp();
	}


	if (mode == "run"){
		mainLoop();
		
	}


	output_deckbox.closefd();
	output_log.closefd();
	return 0;
}
