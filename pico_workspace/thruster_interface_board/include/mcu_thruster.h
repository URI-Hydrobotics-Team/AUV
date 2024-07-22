/* Header for MCU board PWM.
SOSLAB
Author : Tony Jacob, tony.jacob@uri.edu
*/

#include "pico/stdlib.h"
#include "hardware/pwm.h"
#include <stdio.h>

int command = 50;
/////Global Variables
//Clock divider value
float clk_div = 64.f;

//Wrap value
float wrap_value = 39062.f;

//Time Period
float time_period = 20000.f;

/////Functions
//MINMAX for input
long in_min = -100;
long in_max = 100;

//MINMAX for Servo
long out_min_servo = 400;
long out_max_servo = 2400;

//MINMAX for thruster
long out_min_thruster = 1000;
long out_max_thruster = 2000;

/* Motor Class. Initializes with the output pin and the type of motor*/
class Motor{
    public:
        //0 for Servo, 1 for thruster.
        int motortype;

        //For Sweep
        bool direction = true;

        //Constructor
        Motor(int motorPin, int motortype){
            this->motortype = motortype;
            gpio_set_function(motorPin, GPIO_FUNC_PWM);

            uint slice = pwm_gpio_to_slice_num(motorPin);

            pwm_config config = pwm_get_default_config();
            pwm_config_set_clkdiv(&config, clk_div);
            pwm_config_set_wrap(&config, wrap_value);

            pwm_init(slice, &config, true);
        }

        void SetCommand(int motorPin, int command){
            if (this->motortype == 0){
                float millis = map(command, in_min, in_max, out_min_servo, out_max_servo);
                pwm_set_gpio_level(motorPin, (millis/time_period)*wrap_value);
                sleep_ms(10);
            }
            else if (this->motortype == 1){
                float millis = map(command, in_min, in_max, out_min_thruster, out_max_thruster);
                pwm_set_gpio_level(motorPin, (millis/time_period)*wrap_value);
                sleep_ms(10);
            }
        }
        
        float map(long x, long in_min, long in_max, long out_min, long out_max){
            return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
        }

        void Sweep(){
            if (this->motortype == 0){
                command += (direction)?1:-1;
                if(command >= 100) direction = false;
                if(command <= -100) direction = true;
                SetCommand(PWM_PIN, command);
            }    
        }
};