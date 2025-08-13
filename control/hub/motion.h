
/*

	auv-hub movement definitions and thruster control
	PID controller will be used to maintain each predefined movement


	Basic movements:
		- Dive
		- Ascend
		- Forward
		- Backward
		- Left strafe
		- Right strafe
		- Rotate (yaw)
		- Rotate (roll)
		- Rotate (pitch)
		
	Tardigrade Thrusters:
		Bow-Port-Heave		(bph)
		Bow-Starboard-Heave	(bsh)
		Stern-Heave		(sh)
		Yaw			(y)
		Port-Surge		(ps)
		Starboard-Surge 	(ss)

*/




/*
	general movement class and functions for starting and mainting a "mission"
	
*/




class auv_mission{

	private:

		// variables to hold: current pose, current position, target pose, target position



	public:


		//initialization and control loop functions;

		


};

















class auv_motion{
	private:
		/* status */
		double heading,  //current angle
		depth,
		relative_depth,
		acceleration, // in m/s
		velocity; //estmiated velocity

		/* intended movement */

		/*thruster values */

		double thrusters[6];

	public:


		void setMode(const char *mode, double rate){

		}
		
		void updateParameters(double head, double dep, double rel_dep, double acc, double vel){

		}	

		/* not used for simplicity */ 
		void updateThrustes(double &bph, double &bsh, double &sh, double &y, double &ps, double &ss){
			thrusters[0] = bph;
			thrusters[1] = bsh;
			thrusters[2] = sh;
			thrusters[3] = y;
			thrusters[4] = ps;
			thrusters[5] = ss; 
			
		}

		
};
