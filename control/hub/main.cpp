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


/* system strings */
std::string mode, arg1, arg2; //arguments
char status_str[256]; std::string status_string;
char input_str[256]; //from deckbox
char controller_str[128];
int sys_mode = 0;
int verbose;

/* core header files */

/* define network connections here */
auv_tx_socket output_deckbox, output_log; //tx devices
auv_rx_socket input_deckbox; //rx devices




/* define sensors here */

BNO055 sensor_imu; //using pigpio
leak_sensor_t sensor_leak; //using WiringPi
MS5837 sensor_pressure; //using bcm2835

/* vars */
//IMU

imu::Vector<3> euler_orientation, angular_velocity, acceleration_vect, magnetic_field_strength, linear_acceleration, gravity_vector;
imu::Quaternion quaterion_orientation; 
//int thrust_sw_delay = 0;

//leak 
int leak_status; //1 = leak, 0 = no leak

//pressure
float pressure, temperature, depth, altitude;


clock_t stopwatch;	

void resetClock(){

	stopwatch = clock();
} 


#include "motion.h"

double returnTimeStamp(clock_t base){

	clock_t t = clock() - base;
	
	return ((double)t)/CLOCKS_PER_SEC;
}

#include "control.h"

void printHelp(){
	std::cout << "HUB version: " << version_string << "\n";
	std::cout << "\nUSAGE:\n";
	std::cout << "\t\tauv-hub <mode> <arguments>\n"; 
	
	std::cout << "\tModes: help, verbose, run\n";
	std::cout << "\trun:\n";	

}


void initModules(){

	sensor_pressure.fullInit();
	sensor_leak.cold_init();
	sensor_imu.init();
	thrusters.sendAndReceive("INIT_THRUSTERS\n", PICO_SERIAL_PORT);
		
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

void logThrusters(){

	std::string str = "!HST "; //HUB STATUS THRUSTERS
	str += std::to_string(bph);
	str += ' ';
	str += std::to_string(bsh);
	str += ' ' ;
	str += std::to_string(sh);
	str += ' ' ;
	str += std::to_string(y);
	str += ' ' ;
	str += std::to_string(ps);
	str += ' ' ;
	str += std::to_string(ss);
	str += ' ' ;
	output_deckbox.transmit(str.c_str());
	
}

void logThrusterToggle(){


	std::string str = "!HSO "; //HUB STATUS OPTION
	str += std::to_string(thruster_toggle);
	
	output_deckbox.transmit(str.c_str());
}


void logImu(){

	
	std::string str = "!HSI "; //HUB STATUS IMU
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
		output_deckbox.transmit("!HAL");
		output_log.transmit("!HAL");
	}
}


void processInput(){

	if (input_str[0] == '!'){ //is legit

		//DECKBOX COMMAND INPUT
		if (input_str[1] == 'D' &&
		    input_str[2] == 'C' &&
	            input_str[3] == 'I'){

			for (int i = 0; i < 124; i++){
				//copy first 124 usable bytes
				controller_str[i] = input_str[i+4];
			}
			//std::cout << input_str << '\n';
		}
		//DECKBOX COMMAND MODE
		if (input_str[1] == 'D' &&
		    input_str[2] == 'C' &&
	            input_str[3] == 'M'){
			
			sys_mode = (input_str[5] - '0');		
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
	if (verbose == 1){
		std::cout << "sending status\n";
	}
	updateStatus();
	output_deckbox.transmit(status_string.c_str());
	output_log.transmit(status_string.c_str());
}
void mainLoop(){
	initModules();
	initDevices();	// setup and bind socket devices
	resetClock(); // set stopwatch
	qual_stopwatch = clock(); // reset qualification clock
	while (1){
		/* "we call this the loop" */

		/*rec. from sockets */

		if (input_deckbox.probe() > 0){ //this is broken
			strncpy(input_str, input_deckbox.rec(0), 256);
		}
		processInput();

		/* control */
		switch (sys_mode){

			case 0:
				
				testThrusters();
				break;

			case 1:

				manualThrusters();
				logThrusterToggle();
				break;

			case 5:
				qualification();
				break;
		}	


		if (thrust_sw_delay > 0){
			thrust_sw_delay -= 1;
		}
		/* broadcast on sockets */
	
		

		if (returnTimeStamp(stopwatch) > STATUS_INTERVAL){

			getSensors(); //slow
			/*send status string */
			resetClock();
			sendStatus(); 
			logPressure();	
			logImu();
			checkLeak();
			if(verbose == 1){
				std::cout << "[DEBUG] qual_stopwatch: " << std::to_string(returnTimeStamp(qual_stopwatch)) << '\n';
				std::cout << "[DEBUG] controller_str: ";
				std::cout << controller_str << '\n';
	
				std::cout << "[DEBUG] sys_mode: ";
				std::cout << sys_mode << '\n';

			}
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


	if (mode == "verbose"){
		verbose = 1;
		std::cout << "[DEBUG] Verbose Mode On\n";
		mainLoop();
		
	}

	if (mode == "run"){
		/* production usage */
		verbose = 0;
		mainLoop();
	}

	if (mode == "qualify"){
		verbose = 0;
		sys_mode = 5;
		mainLoop();
	}

	output_deckbox.closefd();
	output_log.closefd();
	return 0;
}
