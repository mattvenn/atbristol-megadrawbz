# Battery servo test

## mini servo measurements

* using 10R resister to measure current on scope. 
* Movement from 0 to 100 degrees takes 300ms
* Multimeter shows peak 180mA, avg seems about 30mA
* Integrated curve with scope and got 90mvS, divide by 10R to get 9mAS

* movements each use 9mAS = 0.0025mAH. So to consume 500mAH is 200k moves
* 2k moves use 5mAH

To do a proper test need to move servo more frequently and use a much lower capacity battery.

## Test spec

arduino powered by laptop, servo powered by battery
battery is Panasonic NCR 18650 A Li-Ion 3100mAh 3.7V - [discharge curve](http://2.bp.blogspot.com/-QMeGi0AFhtQ/T2ztWwjDEEI/AAAAAAAADOk/ZcpiqvsJT-g/s1600/Panasonic+3100mAh.jpg)
1 movement every second
4.20V battery at Thu May 19 11:50:19 CEST 2016

2k movements in 2k s = 33min. Test stopped at 12:23. Battery voltage = 4.17V
Additional 2k moves goes to 4.15V
predicted 4v
