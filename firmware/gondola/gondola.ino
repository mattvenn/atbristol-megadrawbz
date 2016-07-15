//#include <SoftwareSerial.h>
#include <Servo.h>
#include <ADCTouch.h>

#define LED_PEN 7
#define LED_STATUS A5
#define BEEP 6

#define SERVO_ENABLE 8
#define SERVO 9
#define BUTTON 10

#define BATT_SENSE A0
#define BATT_DIVIDER A1
#define TOUCH A2
#define CHARGE 4

#define AVG_NUM 100 //filter for the touch

int raw = 0;
unsigned long total = 0;
int samples = 0;
int average = 0;
uint8_t last_amount = 0;
struct {
    uint8_t amount;
    uint8_t cksum;
} rx;

struct {
    uint16_t batt;
    uint16_t rx_count;
    uint16_t err_count;
    uint8_t touch;
    uint8_t flags;
    uint8_t cksum;
} tx;

char rx_buf[sizeof(rx)];
char tx_buf[sizeof(tx)];

enum flags {
  FLAG_CHARGE   = 0b00000001,
};

#define SERVO_OFF 170
#define DEBUG_INTERVAL 10000
#define TOUCH_INTERVAL 100

Servo servo;
byte CRC8(char *data, byte len);
unsigned long debug_count = 0;
unsigned long touch_count = 0;
int touch_val = 0;

void setup()
{
  Serial.begin(57600);
//  Serial.println("started");
  pinMode(LED_PEN,OUTPUT);
  pinMode(LED_STATUS,OUTPUT);
  digitalWrite(LED_PEN,LOW);
  digitalWrite(LED_STATUS,LOW);
  pinMode(CHARGE, INPUT);
  digitalWrite(CHARGE, HIGH);

    pinMode(SERVO_ENABLE, OUTPUT);
    digitalWrite(SERVO_ENABLE, HIGH);


    pinMode(BUTTON, INPUT);
    digitalWrite(BUTTON, HIGH);

    pinMode(BATT_DIVIDER, OUTPUT);
    digitalWrite(BATT_DIVIDER, HIGH);

  servo.attach(SERVO);
  servo.write(SERVO_OFF);

    tone(BEEP, 5000, 200);
    delay(200);
    tone(BEEP, 10000, 200);
    delay(200);
    tone(BEEP, 5000, 200);
    delay(200);
  //Serial.print("sizeof(rx)=");
  //Serial.println(sizeof(rx));
  delay(1000);
}

void loop()
{
    // periodically update battery and print stats
    if(millis() > debug_count + DEBUG_INTERVAL)
    {
        debug_count = millis();
        //Serial.print("rx: ");
        //Serial.print(tx.rx_count);
        //Serial.print(" err count: ");
        //Serial.println(tx.err_count);
        tx.batt = analogRead(BATT_SENSE);

        //charging flag
        if(digitalRead(CHARGE) == LOW) // charging
            tx.flags |= FLAG_CHARGE;
        else
            tx.flags &= ~ FLAG_CHARGE;
    }


    if(millis() > touch_count + TOUCH_INTERVAL)
    {
        touch_count = millis();
        raw = ADCTouch.read(TOUCH, 1); //only get one sample

        total += raw;
        if(samples > AVG_NUM)
            total -= average;
        else
            samples ++;
        average = total / samples;

        //subtract average
        touch_val = raw - average;

        //limit it
        if(touch_val < 0)
            touch_val = 0;
        if(touch_val > 255)
            touch_val = 255;

        tx.touch = touch_val;
        if(touch_val > 10)
            tone(BEEP, 2000, 50);

    }

    if(Serial.available() >= sizeof(rx))
    {
        digitalWrite(LED_STATUS,HIGH);
        // do something with status?
        int status = Serial.readBytes(rx_buf, sizeof(rx));
        tx.rx_count ++;

        //copy buffer to structure
        memcpy(&rx, &rx_buf, sizeof(rx));
        //calculate cksum is ok
        if(rx.cksum != CRC8(rx_buf,sizeof(rx)-1))
        {
            //ignore broken packet
            //Serial.println("err: ck");
            tx.err_count ++;
            digitalWrite(LED_STATUS,LOW);
            Serial.flush();
            return;
        }
        if(rx.amount != last_amount)
        {
            //Serial.print("new val: ");
            //Serial.println(rx.amount);
            last_amount = rx.amount;
        }
        //update the servo
        servo.write(rx.amount);

        //send data back
        memcpy(&tx_buf, &tx, sizeof(tx));
        tx.cksum = CRC8(tx_buf,sizeof(tx)-1);

        memcpy(&tx_buf, &tx, sizeof(tx));
        Serial.write(tx_buf, sizeof(tx));

        digitalWrite(LED_STATUS,LOW);
    }
}

//crc from Dallas Semi
byte CRC8(char *data, byte len) 
{
    byte crc = 0x00;
    while (len--)
    {
        byte extract = *data++;
        for (byte tempI = 8; tempI; tempI--) 
        {
            byte sum = (crc ^ extract) & 0x01;
            crc >>= 1;
            if(sum) 
            {
                crc ^= 0x8C;
            }
            extract >>= 1;
        }
    }
    return crc;
}
