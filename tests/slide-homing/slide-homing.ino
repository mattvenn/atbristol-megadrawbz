#include <Encoder.h>
//pin defs
#define DIRR 0
#define DIRL 4
#define STEPR 2
#define STEPL 1

#define led 7

#define LIMITL 5
#define LIMITR 13 


#define MS1 8
#define MS2 9

#define PWML 10
#define PWMR 11


#define GPIO1 6
#define GPIO2 12
#define GPIO1_IN A7
#define GPIO2_IN A11

Encoder myEnc(GPIO1, GPIO2);

#ifndef cbi
#define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
#define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif
#define BIT_TST(REG, bit, val) ( ( (REG & (1UL << (bit) ) ) == ( (val) << (bit) ) ) )

void send_pos(unsigned long pos);
void home();

void fsL()
{
  //pd3 step pd4 dir
  cbi(PORTD,4);
  cbi(PORTD,3);
  sbi(PORTD,3);
}
void bsL()
{
  sbi(PORTD,4);
  cbi(PORTD,3);
  sbi(PORTD,3);
}
void fsR()
{
  //pd1 step, pd2 dir
  sbi(PORTD,2);
  cbi(PORTD,1);
  sbi(PORTD,1);
}
void bsR()
{
  cbi(PORTD,2);
  cbi(PORTD,1);
  sbi(PORTD,1);
}

const int pwm = 150;
void setup() {
  //load our config from eeprom

  Serial.begin(115200);
  pinMode(led, OUTPUT );
  digitalWrite(led,true);

  pinMode(MS1, OUTPUT );
  pinMode(MS2, OUTPUT );
  pinMode( PWML, OUTPUT );
  pinMode( PWMR, OUTPUT );
  //stepper step and dir
  pinMode( DIRL, OUTPUT );
  pinMode( DIRR, OUTPUT );
  pinMode( STEPL, OUTPUT );
  pinMode( STEPR, OUTPUT );

  analogWrite(PWML, pwm);
  analogWrite(PWMR, pwm);

  digitalWrite(MS1, true );
  digitalWrite(MS2, true);

  pinMode( GPIO1, INPUT );
//  pinMode( GPIO2, INPUT );
//  pinMode( LIMITL, INPUT );
//  pinMode( LIMITR, INPUT );
}

// the loop routine runs over and over again forever:
int steps = 0;
const int step_d = 400;
const int home_d = 2000;
const int backoff_steps = 800;
void loop() 
{
    if(Serial.available() == 2)
    {
        char buf[2];
        Serial.readBytes(buf, 2);
        memcpy(&steps, &buf, 2);
    }

    if(steps > 0)
    {
        bsR();
        bsL();
        steps --;
        delayMicroseconds(step_d);
        if(steps == 0)
        {
            home();
        }
    }
}

void home()
{
    int home_steps = 0;
    //find home
    while(! digitalRead(GPIO1))
    {
        fsR();
        fsL();
        delayMicroseconds(step_d);
        home_steps ++;
    }
    //back off
    for( int i = 0; i < backoff_steps; i ++)
    {
        bsR();
        bsL();
        delayMicroseconds(step_d);
        home_steps --;
    }
    //wind back slower
    while(! digitalRead(GPIO1))
    {
        fsR();
        fsL();
        delayMicroseconds(home_d);
        home_steps ++;
    }
    send_pos(home_steps);
}

void send_pos(unsigned long pos)
{
    char buf[4];
    memcpy(&buf, &pos, 4);
    Serial.write(buf, 4);
}
