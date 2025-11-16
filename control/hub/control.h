/*
	functions for defining output behaviour for the auv (e.g. thrusters, claw, etc.)

	the "do stuff" header file


*/

//thruster variables
PiPicoCommController thrusters;
int thrust_sw_delay = 0;

//mode 0
float test_speed = 0;

//mode 1
int thruster_toggle = 0;

//program wide thrusters values
//     0    1    2   3  4   5
float bph, bsh, sh, y, ps, ss;






/* thruster functions */
void updateThruster(const std::vector<float> &input_values){
	std::vector<int> pwm_values = thrusters.convertToPWM(input_values);
	std::string pwm_command = thrusters.encodeToCommand(pwm_values);
	thrusters.sendAndReceive(pwm_command, PICO_SERIAL_PORT);
	// print response
	//std::cout << "PWM response: " << pwm_response;
}




/*
void doSomethingWithThrusters(){

	//modify bph, bsh, sh, y, ps, ss
	
	updateThruster({bph,bsh,sh,y,ps,ss});

}
*/


/* qualification for robo sub 2025 hardcoded*/


void qualification(int *step){
	std::cout << "qualify\n";
	int elasped_time = qual_stopwatch.getElaspedTimeMS();

	/* 10 seconds before start 
	*/
		
	std::cout << "time: "<< elasped_time <<'\n';
	if (elasped_time >= 1000 && elasped_time < 2000){
		// start descending
		bph = 0.0;
		bsh = 0.0;
		sh = 0.0;
		y = .5;
		ps = -0.35;
		ss = 0.35;
		if (*step == 0){
			updateThruster({bph,bsh,sh,y,ps,ss});
		}

		*step = 1;
	}

	//if (elasped_time >= 2 && elasped_time < 2.4){
	 /* then move forwared*/
	//	ss = 0.5;
	//	ps = 0.5;
	//	sh = 0.2;
	//	bph = 0.2;
	//	bsh = 0.2;
	//	y = 0;

//		updateThruster({bph,bsh,sh,y,ps,ss});

//	}
/*
	if (elasped_time >= 1.2 && elasped_time < 1.9){

		// flip AUV
		bph = 0.5;
		bsh = 0.5;
		sh = -1;
		y = 0;
		ps = 0;
		ss = 0;

		updateThruster({bph,bsh,sh,y,ps,ss});
	}

	if (elasped_time >= 1.9 && elasped_time < 2.1){
		bph = 0.1;
	 	bsh = 0.1;
	 	sh = 0.2;
	 	y = -0.1;
	 	ps = 0.5;
	 	ss = 0.5;
	 	updateThruster({bph,bsh,sh,y,ps,ss});
	 }
*/
/*
	if (elasped_time >= .4 && elasped_time < 0.5){
	 	//re surface(back)
	 	bph = -0.25;
	 	bsh = -0.25;
	 	sh = -0.5;
	 	y  = 0;
	 	ps = -0.65;
	 	ss = -0.5;
	 	updateThruster({bph,bsh,sh,y,ps,ss});

	 }

*/
	if (elasped_time >= 2000){
		//stop
		updateThruster({0,0,0,0,0,0});
	}

}



void manualThrusters(){
	/*
		all thrusters can be independently controlled via controller input
		Controls:
			zero all: face 1
			zero current: face 2
			toggle thruster: face 3
			throttle up: lt2
			throttle down: lt1
	*/

	if (thrust_sw_delay == 0){

		// face button 1 (zero all)
		if (controller_str[4] == '1'){
			bph = 0;
			bsh = 0;
			sh = 0;
			y = 0;
			ps = 0;
			ss = 0;
		}
			
		// face button 2 (zero selected))
		switch (thruster_toggle){
			case 0:
							
				if (controller_str[5] == '1'){
					bph = 0;
				}
				if (controller_str[10] == '1'){
					bph -= 0.01;
				}
				if (controller_str[11] == '1'){
					bph += 0.01;
				}	

				break;
			case 1:
							
				if (controller_str[5] == '1'){
					bsh = 0;
				}
				if (controller_str[10] == '1'){
					bsh -= 0.01;
				}
				if (controller_str[11] == '1'){
					bsh += 0.01;
				}	

				break;

			case 2:
							
				if (controller_str[5] == '1'){
					sh = 0;
				}
				if (controller_str[10] == '1'){
					sh -= 0.01;
				}
				if (controller_str[11] == '1'){
					sh += 0.01;
				}	

				break;
			case 3:
							
				if (controller_str[5] == '1'){
					y = 0;
				}
				if (controller_str[10] == '1'){
					y -= 0.01;
				}
				if (controller_str[11] == '1'){
					y += 0.01;
				}	

				break;
			case 4:
							
				if (controller_str[5] == '1'){
					ps = 0;
				}
				if (controller_str[10] == '1'){
					ps -= 0.01;
				}
				if (controller_str[11] == '1'){
					ps += 0.01;
				}	

				break;

			case 5:
							
				if (controller_str[5] == '1'){
					ss = 0;
				}
				if (controller_str[10] == '1'){
					ss -= 0.01;
				}
				if (controller_str[11] == '1'){
					ss += 0.01;
				}	

				break;

		}
		//face button 3 (switch thrusters)
		if (controller_str[6] == '1'){
			thruster_toggle++;

			if (thruster_toggle > 5){
				thruster_toggle = 0;
			}			

		}
	

		thrust_sw_delay = THRUST_SW_DELAY;
	}

	

	updateThruster({bph,bsh,sh,y,ps,ss});
}






void testThrusters(){


	/*
		turn on all thrusters based on controller input
		should be rewritten like manualThrusters
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
		//test speed down
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

