#define SERVO 3
#define LED 13
#include <Servo.h>
Servo servo;

void setup()
{
    pinMode(LED, OUTPUT);
    servo.attach(SERVO);

}

void loop()
{
    digitalWrite(LED, HIGH);
    servo.write(0);
    delay(1000);
    servo.write(100);
    digitalWrite(LED, LOW);
    delay(1000);

}
