/*

	auv-hub movement definitions

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
		double thrustX, thrustY, thrustZ;


		/*thruster values */

		int thrusters[6];

	public:


		void setHeading(double h){

		}
		
		void setDepth(double d, double rd){

		}
	
		void setVelocity(double v){

		}

		void setAcceleration(double a){

		}

		void setThrust(double x, double y, double z){


		}

		

	





};
