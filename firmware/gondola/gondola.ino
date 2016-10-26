//#include <SoftwareSerial.h>
#include <Servo.h>

#define LED_PEN 7
#define LED_STATUS A5
#define BEEP 6
#define XBEE_SLEEP 5

#define SERVO_ENABLE 8
#define SERVO 9
#define BUTTON 10

#define BATT_SENSE A0
#define BATT_DIVIDER A1
#define TOUCH A2
#define CHARGE 4

#define SERVO_MAX 160 //startup servo position hitec hs-81
#define SERVO_MIN 20
#define MON_INTERVAL 1000 //delay between reading ADC

#define AVG_NUM 10000 //filter for the touch,

int raw = 0;
unsigned long total = 0;
int samples = 0;
int average = 0;
uint8_t last_amount = 0;
struct {
    uint8_t start;
    uint8_t amount;
    uint8_t flags;
    uint8_t cksum;
} rx;

struct {
    uint8_t start = 0xAA;
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
  FLAG_CHARGE        = 0b00000001,
  FLAG_SERVO_ENABLE  = 0b00000010,
};


Servo servo;
byte CRC8(char *data, byte len);
uint16_t read_batt_mv();

unsigned long mon_count = 0;
unsigned long touch_count = 0;
int touch_val = 0;
bool servo_enable = false;

void setup()
{
  /* power saving first */
  pinMode(XBEE_SLEEP, OUTPUT);
  digitalWrite(XBEE_SLEEP, HIGH);

  pinMode(SERVO_ENABLE, OUTPUT);
  digitalWrite(SERVO_ENABLE, LOW);

  pinMode(BATT_DIVIDER, OUTPUT);
  digitalWrite(BATT_DIVIDER, LOW);

  Serial.begin(57600);

  pinMode(LED_PEN,OUTPUT);
  pinMode(LED_STATUS,OUTPUT);

  digitalWrite(LED_PEN,LOW);
  digitalWrite(LED_STATUS,LOW);

  pinMode(CHARGE, INPUT);
  digitalWrite(CHARGE, HIGH);

  pinMode(BUTTON, INPUT);
  digitalWrite(BUTTON, HIGH);

  servo.attach(SERVO);

  tone(BEEP, 5000, 200);
  delay(200);

  tone(BEEP, 3000, 200);
  //turn on xbee
  digitalWrite(XBEE_SLEEP, LOW);
}

uint16_t read_batt_mv()
{
    /* 
    R1 = 10k, R2 = 4.7k
    mv per ADC count = 3300 / 1024
    */
    digitalWrite(BATT_DIVIDER, HIGH);
    delay(2);
    return 4.737 * analogRead(BATT_SENSE);
    digitalWrite(BATT_DIVIDER, LOW);
}
void loop()
{
    // periodically update battery and print stats
    if(millis() > mon_count + MON_INTERVAL)
    {
        mon_count = millis();
        tx.batt = read_batt_mv();

        //charging flag
        /*
        Shutdown Hi-Z 
        No Battery Present Hi-Z 
        Preconditioning L 
        Constant-Current Fast Charge L
        Constant Voltage L
        Charge Complete – Standby H
        */
        if(digitalRead(CHARGE) == LOW) // charging
        {
            digitalWrite(LED_PEN, LOW);
            tx.flags |= FLAG_CHARGE;
        }
        else
        {
            tx.flags &= ~ FLAG_CHARGE;
            digitalWrite(LED_PEN, HIGH);
        }

        if(servo_enable)
            tx.flags |= FLAG_SERVO_ENABLE;
        else
            tx.flags &= ~ FLAG_SERVO_ENABLE;
    }

    if(Serial.available() >= sizeof(rx))
    {
        uint8_t start = Serial.peek();

        if(start != 0xAA)
        {
            // chuck the 1st byte
            Serial.read();
            tx.err_count ++;
            return;
        }
        
        digitalWrite(LED_STATUS,HIGH);
        Serial.readBytes(rx_buf, sizeof(rx));
        tx.rx_count ++;

        //copy buffer to structure
        memcpy(&rx, &rx_buf, sizeof(rx));
        //calculate cksum is ok
        if(rx.cksum != CRC8(rx_buf,sizeof(rx)-1))
        {
            //ignore broken packet
            //Serial.println("err: ck");
            tx.err_count ++;
        }
        else
        {
            //turn on or off servo
            if(rx.flags & FLAG_SERVO_ENABLE)
            {
                servo_enable = true;
                digitalWrite(SERVO_ENABLE, HIGH);
            }
            else
            {
                servo_enable = false;
                digitalWrite(SERVO_ENABLE, LOW);
            }

            //update the servo
            if(rx.amount <= SERVO_MAX && rx.amount >= SERVO_MIN)
                servo.write(rx.amount);
        }
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
