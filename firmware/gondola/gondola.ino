#include <SoftwareSerial.h>
#include <Servo.h>

struct {
    uint8_t amount;
    uint8_t cksum;
} rx;

struct {
    uint16_t batt;
    uint16_t rx_count;
    uint16_t err_count;
    uint8_t cksum;
} tx;

char rx_buf[sizeof(rx)];
char tx_buf[sizeof(tx)];
/*
arduino is positioned:
* top 5 pins mesh with 9,10,11,12,13
* bottom 4 pins mesh with gnd gnd +5, 3.3v
*/

#define LED_PIN 13
#define XBEE_RX 10
#define XBEE_TX 11 
#define SERVO 9
#define SERVO_OFF 30
#define BATT_ADC A0
#define INTERVAL 1000

Servo servo;
byte CRC8(char *data, byte len);
unsigned long count = 0;

SoftwareSerial xbee_serial(XBEE_RX,XBEE_TX); 
void setup()
{
  Serial.begin(115200);
  Serial.println("started");
  pinMode(LED_PIN,OUTPUT);
  digitalWrite(LED_PIN,HIGH);
  xbee_serial.begin(57600);
  servo.attach(SERVO);
  servo.write(SERVO_OFF);
  analogReference(INTERNAL);
  Serial.print("sizeof(rx)=");
  Serial.println(sizeof(rx));
}

void loop()
{
    // periodically update battery and print stats
    if(millis() > count + INTERVAL)
    {
        count = millis();
        Serial.print("rx: ");
        Serial.print(tx.rx_count);
        Serial.print(" err count: ");
        Serial.print(tx.err_count);
        tx.batt = analogRead(BATT_ADC);
    }
    
    if(xbee_serial.available() == sizeof(rx))
    {
        digitalWrite(LED_PIN,HIGH);
        // do something with status?
        int status = xbee_serial.readBytes(rx_buf, sizeof(rx));
        tx.rx_count ++;

        //copy buffer to structure
        memcpy(&rx, &rx_buf, sizeof(rx));
        //calculate cksum is ok
        if(rx.cksum != CRC8(rx_buf,sizeof(rx)-1))
        {
            //ignore broken packet
            Serial.println("err: ck");
            tx.err_count ++;
            return;
        }
        //only write if amount is moveable
        if(rx.amount < 180)
            servo.write(rx.amount);

        //send data back
        memcpy(&tx_buf, &tx, sizeof(tx));
        tx.cksum = CRC8(tx_buf,sizeof(tx)-1);

        memcpy(&tx_buf, &tx, sizeof(tx));
        xbee_serial.write(tx_buf, sizeof(tx));

        digitalWrite(LED_PIN,LOW);
    }
    else if(xbee_serial.available() > sizeof(rx))
    {
        tx.err_count ++;
        xbee_serial.flush();
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
