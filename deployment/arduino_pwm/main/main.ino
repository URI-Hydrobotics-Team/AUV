/* designed for arduino mega */

#include <Servo.h>

Servo esc;


void setup() {
  // put your setup code here, to run once:
  esc.attach(9);
  esc.writeMicroseconds(1500);
  delay(7000);
}

void loop() {
  // put your main code here, to run repeatedly:
  esc.writeMicroseconds(1540);

}
