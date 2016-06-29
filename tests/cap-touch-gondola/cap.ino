#include <CapacitiveSensor.h>
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_PCD8544.h>

/*
 * CapitiveSense Library Demo Sketch
 * Paul Badger 2008
 * Uses a high value resistor e.g. 10M between send pin and receive pin
 * Resistor effects sensitivity, experiment with values, 50K - 50M. Larger resistor values yield larger sensor values.
 * Receive pin is the sensor pin - try different amounts of foil/metal on this pin
 */

CapacitiveSensor   cs_4_2 = CapacitiveSensor(4,2);        // 10M resistor between pins 4 & 2, pin 2 is sensor pin, add a wire and or foil if desired

// Software SPI (slower updates, more flexible pin options):
// pin 7 - Serial clock out (SCLK)
// pin 6 - Serial data out (DIN)
// pin 5 - Data/Command select (D/C)
// pin 4 - LCD chip select (CS)
// pin 3 - LCD reset (RST)

  //Adafruit_PCD8544(int8_t SCLK, int8_t DIN, int8_t DC, int8_t CS, int8_t RST);
Adafruit_PCD8544 display = Adafruit_PCD8544(13,11,8,10,9);

#define led 5
void setup()                    
{
   pinMode(led,OUTPUT);
   Serial.begin(9600);
  display.begin();
  display.clearDisplay();   // clears the screen and buffer
  display.setContrast(45);
}

void loop()                    
{
    long total1 =  cs_4_2.capacitiveSensor(30);
    /*
    if( total1 > 30)
        digitalWrite(led, true);
    else
        digitalWrite(led, false);
     */
    //Serial.println(total1);                  // print sensor output 1

    delay(250);                             // arbitrary delay to limit data to serial port 
  display.clearDisplay();   // clears the screen and buffer
  display.setCursor(0,0);
  display.setTextSize(2);
  display.setTextColor(BLACK);
  display.println(total1);
  display.display();
}
