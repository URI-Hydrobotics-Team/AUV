/*
	URI Hydrobotics PID Controller for Tardigrade


*/

class PID_controller{


	private:

		double Kp, Ki, Kd;
		double tau;
		double limMin, limMax; //output limits
		double limMinInt, limMaxInt; //integrator limits
		double T; //sample time
		double integrator, prevError, diff, prevMeasurement;
		double out;
	public:
		//initialization

		PID_controller(double p, double i, double d, double t, double lmin, double lmax, double lmini, double lmaxi, double time){

			Kp = p;
			Ki = i;
			Kd = d;
			limMin = lmin;
			limMax = lmax;
			limMinInt = lmini;
			limMinInt = lmaxi;
			T = time;
		}		

		
		void init(){
			integrator = 0;
			prevError = 0;
			diff = 0;
			prevMeasurement = 0;
			

		}
		double getOut(){
			return out;
		}
		double update(double setpoint, double measurement){
			/* error signal */
			double error = setpoint - measurement;

			/*proportional */
			double proportional = Kp * error;				

			/*integral */
			integrator = integrator + 0.5 * Ki * T * (error + prevError);

			/* Anti-wind-up via integrator clamping */
    			if (integrator > limMaxInt) {
        			integrator = limMaxInt;

    			} else if (integrator < limMin) {

        			integrator = limMinInt;

    			}
			/* derivative */

			diff = -(2.0f * Kd * (measurement - prevMeasurement) + (2.0f * tau - T) * diff) / (2.0f * tau + T);

			/* Compute output and apply limit */
    			out = proportional + integrator + diff;

    			if (out > limMax) {

        			out = limMax;

    			}else if (out < limMin) {

       				out = limMin;

    			}

			prevError = error;
   	 		prevMeasurement = measurement;

			/* Return controller output */
    			return out;


		}

};
