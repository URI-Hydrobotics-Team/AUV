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
#include "motion.h"



/* system strings */
std::string mode, arg1, arg2; //arguments
char status_str[256]; std::string status_string;
char input_str[256]; //from deckbox
char controller_str[128];

/* define network connections here */
auv_tx_socket output_deckbox, output_log; //tx devices
auv_rx_socket input_deckbox; //rx devices

/* PiPicoCommControl */

PiPicoCommController thrusters;


/* define sensors here */

BNO055 sensor_imu; //using pigpio
leak_sensor_t sensor_leak; //using WiringPi
MS5837 sensor_pressure; //using bcm2835

/* vars */
//IMU

imu::Vector<3> euler_orientation, angular_velocity, acceleration_vect, magnetic_field_strength, linear_acceleration, gravity_vector;
imu::Quaternion quaterion_orientation; 
int thrust_sw_delay = 0;

//leak 
int leak_status; //1 = leak, 0 = no leak

//pressure
float pressure, temperature, depth, altitude;

//thrusters 


clock_t stopwatch;	

void printHelp(){
	std::cout << "HUB version: " << version_string << "\n";
	std::cout << "\nUSAGE:\n";
	std::cout << "\t\tauv-hub <mode> <arguments>\n"; 
	
	std::cout << "\tModes: help, run\n";
	std::cout << "\trun:\n";	

}


void initModules(){

	sensor_pressure.fullInit();
	sensor_leak.cold_init();
	sensor_imu.init();
	thrusters.sendAndReceive("INIT_THRUSTERS\n", PICO_SERIAL_PORT);
		
	
}

void updateThruster(const std::vector<float> &input_values){
	std::vector<int> pwm_values = thrusters.convertToPWM(input_values);
	std::string pwm_command = thrusters.encodeToCommand(pwm_values);
	thrusters.sendAndReceive(pwm_command, PICO_SERIAL_PORT);
	// print response
	//std::cout << "PWM response: " << pwm_response;
}


void testThrusters(){


	/*
		turn on thrusters based on buttons
	*/

	// 4 face buttons
	if (controller_str[4] == '1' && thrust_sw_delay == 0){
		//on
		updateThruster({0.1,0.1,0.1,0.1,0.1,0.1});
		std::cout << "Thrusters 10%\n";	
		thrust_sw_delay = THRUST_SW_DELAY;
	}
	if (controller_str[5] == '1' && thrust_sw_delay == 0){
		//off
		updateThruster({0.0,0.0,0.0,0.0,0.0,0.0});

		std::cout << "Thrusters off\n";	
		thrust_sw_delay = THRUST_SW_DELAY;
	}
	if (controller_str[7] == '1'){
		
		thrust_sw_delay = THRUST_SW_DELAY;
	}

	if (controller_str[7] == '1'){
		
		thrust_sw_delay = THRUST_SW_DELAY;
	}


	

}

void sendPump(){



}

void getSensors(){
	sensor_pressure.read();
	pressure = sensor_pressure.getPressure();
	temperature = sensor_pressure.getTemperature();
	depth = sensor_pressure.getDepth();
	altitude = sensor_pressure.getAltitude();
	leak_status = sensor_leak.probe();

	
	//IMU data
	euler_orientation = sensor_imu.get_Euler_Orientation();
	quaterion_orientation = sensor_imu.get_Quaterion_Orientation();
	angular_velocity = sensor_imu.get_Angular_Velocity();
	acceleration_vect = sensor_imu.get_Acceleration_Vector();
	magnetic_field_strength = sensor_imu.get_Magnetic_Field_Strength();
	linear_acceleration = sensor_imu.get_Linear_Acceleration();
	gravity_vector = sensor_imu.get_Gravity_Vector();
	

	




}

void logImu(){

	
	std::string str = "!HSI ";
	str += std::to_string(euler_orientation.x()); 
	str += ' '; 
	str += std::to_string(euler_orientation.y()); 
	str += ' '; 
	str += std::to_string(euler_orientation.z()); 
	str += ' '; 
	str += std::to_string(angular_velocity.x()); 
	str += ' '; 
	str += std::to_string(angular_velocity.y()); 
	str += ' '; 
	str += std::to_string(angular_velocity.z()); 
	str += ' '; 
	str += std::to_string(acceleration_vect.x()); 
	str += ' '; 
	str += std::to_string(acceleration_vect.y()); 
	str += ' '; 
	str += std::to_string(acceleration_vect.z()); 
	str += ' '; 
	str += std::to_string(magnetic_field_strength.x()); 
	str += ' '; 
	str += std::to_string(magnetic_field_strength.y()); 
	str += ' '; 
	str += std::to_string(magnetic_field_strength.z()); 
	str += ' '; 
	str += std::to_string(linear_acceleration.x()); 
	str += ' '; 
	str += std::to_string(linear_acceleration.y()); 
	str += ' '; 
	str += std::to_string(linear_acceleration.z()); 
	str += ' '; 
	str += std::to_string(gravity_vector.x());
	str += ' '; 
	str += std::to_string(gravity_vector.y());
	str += ' '; 
	str += std::to_string(gravity_vector.z());
	str += ' '; //terminating space 
	//std::cout << str << '\n';
	//std::cout << angular_velocity.x() << ' ' << angular_velocity.y() << ' ' << angular_velocity.z() << '\n';
	//output_log.transmit(str.c_str());
	output_deckbox.transmit(str.c_str());

}





void logPressure(){
	std::string str = "!HSP ";
	str += std::to_string(pressure); str += ' '; str += std::to_string(temperature); str += ' '; str += std::to_string(depth); str += ' '; str += std::to_string(altitude); str += ' ';
	output_log.transmit(str.c_str());
	output_deckbox.transmit(str.c_str());
	//std::cout << str << '\n';
}


void initDevices(){

	// NOTE: multicasting will be removed soon as it is useless in this implementation
		
	/* initalize devices */
	output_deckbox.init(DECKBOX_IP, DECKBOX_PORT_TX); 
	output_log.init(LOG_IP, LOG_PORT_TX); 
	input_deckbox.init(DECKBOX_PORT_RX);

}


void checkLeak(){
	if (leak_status){
		output_deckbox.transmit("!ALR Leak Detected");
		output_log.transmit("!ALR Leak Detected");
	}
}


void processInput(){

	if (input_str[0] == '!'){ //is legit

		//DECKBOX CONTROLLER INPUT
		if (input_str[1] == 'D' &&
		    input_str[2] == 'C' &&
	            input_str[3] == 'I'){

			for (int i = 0; i < 15; i++){
				//copy first 12 usable bytes
				controller_str[i] = input_str[i+4];
			}
			//std::cout << controller_str << '\n';
		}

	}

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

	//std::cout << "status string: " << status_string << '\n';

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
		/*rec. from sockets */

		if (input_deckbox.probe() > 0){ //this is broken
			strncpy(input_str, input_deckbox.rec(0), 256);
		}
		processInput();
		testThrusters();

		if (thrust_sw_delay > 0){
			thrust_sw_delay -= 1;
		}
		/* broadcast on sockets */
	
		if (returnTimeStamp() > STATUS_INTERVAL){

			getSensors(); //slow
			/*send status string */
			resetClock();
			sendStatus(); 
			logPressure();	
			logImu();
			checkLeak();
			std::cout << controller_str << '\n';	
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
