//#include <SoftwareSerial.h>
#include <Servo.h>
#include <ADCTouch.h>

int raw = 0;
long total = 0;
int samples = 0;
int average = 0;
#define AVG_NUM 100
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
//    uint8_t flags;
    uint8_t cksum;
} tx;

char rx_buf[sizeof(rx)];
char tx_buf[sizeof(tx)];
/*
enum flags {
  FLAG_TOUCH    = 0x01,
};
*/

/*
arduino is positioned:
* top 5 pins mesh with 9,10,11,12,13
* bottom 4 pins mesh with gnd gnd +5, 3.3v
*/

#define LED_PIN 13
#define XBEE_RX 10
#define XBEE_TX 11 
#define SERVO 9
#define SERVO_OFF 170
#define BATT_ADC A1
#define DEBUG_INTERVAL 10000
#define TOUCH_INTERVAL 100
#define LED_TOUCH A2
#define TOUCH A5

int ref;       //reference values to remove offset
Servo servo;
byte CRC8(char *data, byte len);
unsigned long debug_count = 0;
unsigned long touch_count = 0;
int touch_val = 0;

//SoftwareSerial xbee_serial(XBEE_RX,XBEE_TX); 
void setup()
{
  Serial.begin(57600);
//  Serial.println("started");
  pinMode(LED_PIN,OUTPUT);
  pinMode(LED_TOUCH,OUTPUT);
  digitalWrite(LED_PIN,HIGH);
  digitalWrite(LED_TOUCH,HIGH);
  //xbee_serial.begin(57600);
  servo.attach(SERVO);
  servo.write(SERVO_OFF);
  //Serial.print("sizeof(rx)=");
  //Serial.println(sizeof(rx));
  delay(1000);
  ref = ADCTouch.read(TOUCH, 500);    //create reference values to
}

void clear_adc()
{
        for(int i = 0; i<5; i++)
        {
            analogRead(BATT_ADC);
            //delay(1);
        }
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
        analogReference(INTERNAL);
        clear_adc();
        tx.batt = analogRead(BATT_ADC);
        analogReference(DEFAULT);
        clear_adc();
    }

    if(millis() > touch_count + TOUCH_INTERVAL)
    {
        touch_count = millis();
        raw = ADCTouch.read(TOUCH);

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
        {
            digitalWrite(LED_TOUCH, HIGH);
  //          tx.flags |= FLAG_TOUCH;
        }
        else
        {
            digitalWrite(LED_TOUCH, LOW);
        //    tx.flags &= ~ FLAG_TOUCH;
        }
    }
    if(Serial.available() == sizeof(rx))
    {
        digitalWrite(LED_PIN,HIGH);
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

        digitalWrite(LED_PIN,LOW);
    }
    else if(Serial.available() > sizeof(rx))
    {
        tx.err_count ++;
        Serial.flush();
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
