# gondola PCB

## mods made

* connect xbee rx & tx to atmel rx & tx (no software serial) - solder wires to xbee header and connected a header that plugs into the programming header
* [lipo charger](http://dlnmh9ip6v2uc.cloudfront.net/datasheets/Prototyping/TP4056.pdf) soldered to the back, connected pin 7 to charge pin on pcb

## fixes required for next version

* lipo charger on board
* reset button
* reset xbee from atmega
* remote firmware update - arduino needs to reset itself 
* lipo socket that fits
* crystal footprint, no load caps required!
* lower frequency crtstal, mega328 is only guaranteed to 10mhz on 3.3v

## xbee firmware update

* has to be hw. tried sw and didn't work. used a 2n3904 to invert the signal and pull reset low
* haven't tried with xbee yet.
* wide timing window : 900ms before or after avrdude is run
