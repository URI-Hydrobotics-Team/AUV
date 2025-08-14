
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


class vector_t{
	//vector for 3d space
	public:
	double x;
	double y;
	double z;	

};


class auv_mission{

	private:

		// variables to hold: current pose, current position, target pose, target position

		double curr_pose_r, curr_pose_p, curr_pose_y;
		double target_pose_r, target_pose_p, target_pose_y;
		double curr_x, curr_y, curr_z;
		double target_x, target_y, target_z;
		

		bool is_active = true; //set to false when target position and target pose are reached
		int hold_pose_duration; //length to hold pose duration in seconds



	public:
	
	
		//initialization and control loop functions;
		void init(vector_t curr_pose, vector_t curr_posi, vector_t target_pose, vector_t target_posi){
			curr_pose_r = curr_pose.x;
			curr_pose_p = curr_pose.y;
			curr_pose_y = curr_pose.z;

			target_pose_r = target_pose.x;
			target_pose_p = target_pose.y;
			target_pose_y = target_pose.z;

			curr_x = curr_posi.x;
			curr_y = curr_posi.y;
			curr_z = curr_posi.z;

			target_x = target_posi.x;
			target_y = target_posi.y;
			target_z = target_posi.z;


		}

	
		void update(){
			if (is_active){
				//check sensors
				//make adjustments
		

			}



		}

		void stop(){
			is_active = false;
		}	


};



/* missions_buffer functions */
auv_mission missions_buffer[16];

void stop_all_missions(){
	/* emergancy stop function, tied to missions_buffer for now */
	for (int i = 0; i < 16; i++){
		missions_buffer[i].stop();
	}
	

}

void add_mission_to_buffer(auv_mission mission){



}






