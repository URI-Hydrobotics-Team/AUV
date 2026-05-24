#include <pigpio.h>
#include <stdlib.h>
#include <stdio.h>


#define GPIO_BUTTON
#define GPIO_LED_RED1 3
#define GPIO_LED_GREEN 2 
#define GPIO_LED_BLUE 0
#define GPIO_LED_RED2 1




int main(){



	gpioSetMode(GPIO_LED_BLUE, PI_OUTPUT):

	
	short status = 0;

	while(1){


		if (status == 0){
			
			gpioWrite(GPIO_LED_BLUE, 1):
					
			status = 1;
		}else{

			
			gpioWrite(GPIO_LED_BLUE, 0):
			status = 0;
		}
		
	

		usleep(1000 * 1000);
	}











	return 0;

}
