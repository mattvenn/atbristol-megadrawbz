# xbee hal component

lots of good reference [here](http://linuxcnc.org/docs/html/hal/comp.html)

## compiling and installing

comp --compile xbee.comp && sudo cp xbee.so  /usr/lib/linuxcnc/xenomai/ 

## hal config

loadrt threads name1=test period1=1000000
loadrt xbee 
addf xbee.0 test
start
setp xbee.0.in 0
setp xbee.0.in 8

halcmd: show thread
Realtime Threads (flavor: xenomai) :
     Period  FP     Name               (     Time, Max-Time ) flags
         1000000  YES                  test ( 25221042, 25443709 ) 
                           1 xbee.0

shows max time is 25ms, adjust thread to 50ms

set thread period longer:
loadrt threads name1=t period1=50000000

halcmd: setp xbee.0.in 0
halcmd: setp xbee.0.in 4
halcmd: show thread
Realtime Threads (flavor: xenomai) :
     Period  FP     Name               (     Time, Max-Time ) flags
  50000000  YES                     t ( 25123500, 25517625 ) 
                  1 xbee.0

## timing

### at 57.6k

running the loop 500 times takes 12seconds (done with shell time function). So each loop takes 0.024s

### at 115200

takes 5 seconds, but lots of lost packets (due to software serial on arduino?).
Each loop takes 0.01s

### programming xbees

set baud:

miniterm.py /dev/ttyUSB0 57600
+++
OK
ATBD7
OK
ATWR
OK

