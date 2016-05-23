
#include <Encoder.h>
Encoder myEnc(2,3);
#define LED 13

void setup()
{
Serial.begin(115200);
pinMode(LED, OUTPUT);
digitalWrite(LED, false);
}

void send_pos(unsigned long pos);
int steps = 0;
void loop()
{
    if(Serial.available() == 2)
    {
        digitalWrite(LED, true);
        char buf[2];
        Serial.readBytes(buf, 2);
        memcpy(&steps, &buf, 2);

        // reset encoder if get 0 steps
        /*
        if(steps == 0)
        {
            myEnc.write(0);
        }
        */
        send_pos(myEnc.read());
    }
    digitalWrite(LED, false);
}

void send_pos(unsigned long pos)
{
    char buf[4];
    memcpy(&buf, &pos, 4);
    Serial.write(buf, 4);
}
