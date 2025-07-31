/*
	functions for defining output behaviour for the auv (e.g. thrusters, claw, etc.)

	the "do stuff" header file


*/

//thruster variables
PiPicoCommController thrusters;
int thrust_sw_delay = 0;
float test_speed = 0;


/* thruster functions */
void updateThruster(const std::vector<float> &input_values){
	std::vector<int> pwm_values = thrusters.convertToPWM(input_values);
	std::string pwm_command = thrusters.encodeToCommand(pwm_values);
	thrusters.sendAndReceive(pwm_command, PICO_SERIAL_PORT);
	// print response
	//std::cout << "PWM response: " << pwm_response;
}


void testThrusters(){


	/*
		turn on thrusters based on controller input
	*/

	// 4 face buttons
	if (controller_str[4] == '1' && thrust_sw_delay == 0){
		//on
		updateThruster({test_speed,test_speed,test_speed,test_speed,test_speed,test_speed});
		std::cout << "Thruster Speed: " << test_speed <<"\n";	
		thrust_sw_delay = THRUST_SW_DELAY;
	}
	if (controller_str[5] == '1' && thrust_sw_delay == 0){
		//off
		updateThruster({0.0,0.0,0.0,0.0,0.0,0.0});

		std::cout << "Thrusters off\n";	
		thrust_sw_delay = THRUST_SW_DELAY;
	}

	if (controller_str[10] == '1' && thrust_sw_delay == 0){
		//test speed up
		test_speed -= 0.01;
		
		thrust_sw_delay = THRUST_SW_DELAY;
		std::cout << "Thruster Speed: " << test_speed <<"\n";	
	}
	if (controller_str[11] == '1' && thrust_sw_delay == 0){
		//test speed up
		test_speed += 0.01;
		
		thrust_sw_delay = THRUST_SW_DELAY;
		std::cout << "Thruster Speed: " << test_speed <<"\n";	
	}


	

	if (controller_str[7] == '1'){
		
		thrust_sw_delay = THRUST_SW_DELAY;
	}

	if (controller_str[7] == '1'){
		
		thrust_sw_delay = THRUST_SW_DELAY;
	}
}


/* pump functions */

void sendPump(){
	/*
		place holder function for pump driver
		will likely not be implemented for 2025
	
	*/
}

