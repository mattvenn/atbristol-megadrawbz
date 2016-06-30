#include <SoftwareSerial.h>
#include <Servo.h>

typedef struct {
    uint8_t amount;
    uint8_t cksum;
} Can;

typedef struct {
    uint16_t batt;
    uint8_t cksum;
} Response;

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
#define INTERVAL 5000
Servo servo;
byte CRC8(char *data, byte len);
unsigned long count = 0;
SoftwareSerial xbee_serial(XBEE_RX,XBEE_TX); //pin 5 is RX
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
}

void loop()
{
    if(millis() > count + INTERVAL)
    {
        count = millis();
        Serial.print("t: ");
        Serial.println(count);
    }

    int serial_bytes =  xbee_serial.available();

    if(serial_bytes == sizeof(Can))
    {
        Can data;
        char buf[sizeof(Can)];
        // do something with status?
        int status = xbee_serial.readBytes(buf, sizeof(Can));

        //copy buffer to structure
        memcpy(&data, &buf, sizeof(Can));
        //calculate cksum is ok
        if(data.cksum != CRC8(buf,sizeof(Can)-1))
        {
            //ignore broken packet
            Serial.println("err: ck");
            return;
        }
        //only write if amount is moveable
        if(data.amount < 180)
            servo.write(data.amount);

        //send battery data back
        Response resp;
        resp.batt = analogRead(BATT_ADC);
        char rbuf[sizeof(Response)];
        memcpy(&rbuf, &resp, sizeof(Response));
        resp.cksum = CRC8(rbuf,sizeof(Response)-1);

        memcpy(&rbuf, &resp, sizeof(Response));

        for(int b = 0; b < sizeof(Response); b++)
            xbee_serial.write(rbuf[b]);
    }
    else if (serial_bytes > sizeof(Can))
    {
        Serial.println("err: too many bytes");
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
