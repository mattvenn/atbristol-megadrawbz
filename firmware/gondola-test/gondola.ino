#include <Servo.h>
#include <ADCTouch.h>

Servo servo;
int ref;       //reference values to remove offset

#define pen_led 7
#define status_led A5
#define beep 6

#define servo_enable 8
#define SERVO 9
#define button 10

#define batt_sense A0
#define batt_divider A1
#define TOUCH A2

void setup()
{
    pinMode(pen_led,OUTPUT);
    pinMode(status_led,OUTPUT);
    pinMode(servo_enable, OUTPUT);
    digitalWrite(servo_enable, LOW);

    pinMode(button, INPUT);
    digitalWrite(button, HIGH);
    pinMode(batt_divider, OUTPUT);

    servo.attach(SERVO);

    Serial.begin(9600);
    Serial.println("started");

    tone(beep, 5000, 200);
    delay(200);
    tone(beep, 10000, 200);
    delay(200);
    tone(beep, 5000, 200);
    delay(200);

    ref = ADCTouch.read(TOUCH, 500);    //create reference values to
}

void loop()
{
    digitalWrite(servo_enable, HIGH);
    servo.write(10);
    delay(500);
    digitalWrite(servo_enable, LOW);

    digitalWrite(pen_led, HIGH);
    digitalWrite(status_led, HIGH);

    delay(500);
    digitalWrite(pen_led, LOW);
    digitalWrite(status_led, LOW);

    delay(500);

    if(digitalRead(button) == LOW)
        tone(beep, 5000, 200);

    digitalWrite(servo_enable, HIGH);
    servo.write(90);
    delay(500);
    digitalWrite(servo_enable, LOW);

    Serial.print("touch: ");
    Serial.println(ADCTouch.read(TOUCH) - ref);

    Serial.print("batt: ");
    digitalWrite(batt_divider, HIGH);
    Serial.println(analogRead(batt_sense));
    digitalWrite(batt_divider, LOW);
    
}

