


/*

	auv-hub movement definitions
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
		
	Thrusters:
		Bow-Port-Heave		(bph)
		Bow-Starboard-Heave	(bsh)
		Stern-Heave		(sh)
		Yaw			(y)
		Port-Surge		(ps)
		Starboard-Surge 	(ss)

*/




















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

		void updateThrustes(double &bph, double &bsh, double &sh, double &y, double &ps, double &ss){


		}

	



};
