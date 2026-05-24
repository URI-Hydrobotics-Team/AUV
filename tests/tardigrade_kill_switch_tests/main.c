#include <pigpio.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#define GPIO_SWITCH 5
#define GPIO_LED_RED1 3
#define GPIO_LED_GREEN 2 
#define GPIO_LED_BLUE 0
#define GPIO_LED_RED2 1



void blink_test(){


	gpioSetMode(GPIO_SWITCH, PI_PUD_UP);
	short status = 0;

	while(1){


		if (status == 0){
			
			gpioWrite(GPIO_LED_BLUE, 1);
					
			status = 1;
		}else{

			
			gpioWrite(GPIO_LED_BLUE, 0);
			status = 0;
		}
		
	

		usleep(1000 * 1000);
	}


}



void switch_test(){

	
	gpioSetMode(GPIO_SWITCH, PI_PUD_UP);
	while(1){

		if (gpioRead(GPIO_SWITCH) == 0){


			gpioWrite(GPIO_LED_BLUE, 1);

		}else{


			gpioWrite(GPIO_LED_BLUE, 0);
		}


		usleep(1000);


	}
}





void bluerobotics_switch_test(){

	
	gpioSetMode(GPIO_SWITCH, PI_PUD_UP);
	while(1){


		printf("%d\n", gpioRead(GPIO_SWITCH));

		if (gpioRead(GPIO_SWITCH) == 0){


			gpioWrite(GPIO_LED_BLUE, 1);

		}else{


			gpioWrite(GPIO_LED_BLUE, 0);
		}


		usleep(1000);


	}
}





int main(){


	gpioInitialise();
	gpioSetMode(GPIO_LED_BLUE, PI_OUTPUT);

	gpioWrite(GPIO_LED_BLUE, 0);
	bluerobotics_switch_test();
	//switch_test();








	return 0;

}
