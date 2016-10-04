EESchema Schematic File Version 2
LIBS:bbbbbb-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:xbee
LIBS:drv2250
LIBS:tcn75
LIBS:bbbbbb-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X23 port9
U 1 1 575EACCA
P 2400 3650
F 0 "port9" H 2400 4850 50  0000 C CNN
F 1 "CONN_02X23" V 2400 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x23" H 2400 2800 60  0001 C CNN
F 3 "" H 2400 2800 60  0000 C CNN
	1    2400 3650
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR01
U 1 1 575EAD3D
P 1550 2550
F 0 "#PWR01" H 1550 2300 50  0001 C CNN
F 1 "Earth" H 1550 2400 50  0001 C CNN
F 2 "" H 1550 2550 60  0000 C CNN
F 3 "" H 1550 2550 60  0000 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR02
U 1 1 575EAD75
P 3300 2550
F 0 "#PWR02" H 3300 2300 50  0001 C CNN
F 1 "Earth" H 3300 2400 50  0001 C CNN
F 2 "" H 3300 2550 60  0000 C CNN
F 3 "" H 3300 2550 60  0000 C CNN
	1    3300 2550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 575EAD9A
P 2850 2650
F 0 "#PWR03" H 2850 2500 50  0001 C CNN
F 1 "+3.3V" H 2850 2790 50  0000 C CNN
F 2 "" H 2850 2650 60  0000 C CNN
F 3 "" H 2850 2650 60  0000 C CNN
	1    2850 2650
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 575EADAF
P 2000 2650
F 0 "#PWR04" H 2000 2500 50  0001 C CNN
F 1 "+3.3V" H 2000 2790 50  0000 C CNN
F 2 "" H 2000 2650 60  0000 C CNN
F 3 "" H 2000 2650 60  0000 C CNN
	1    2000 2650
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR05
U 1 1 575EB042
P 1600 4750
F 0 "#PWR05" H 1600 4500 50  0001 C CNN
F 1 "Earth" H 1600 4600 50  0001 C CNN
F 2 "" H 1600 4750 60  0000 C CNN
F 3 "" H 1600 4750 60  0000 C CNN
	1    1600 4750
	1    0    0    -1  
$EndComp
Text Label 1600 4550 0    60   ~ 0
7seg-clk
Text Label 3050 4550 0    60   ~ 0
7seg-!oe
Text Label 1600 4050 0    60   ~ 0
gpio5
Text Label 1600 3950 0    60   ~ 0
gpio4
Text Label 1600 3850 0    60   ~ 0
gpio3
Text Label 1600 3750 0    60   ~ 0
gpio2
Text Label 1600 3650 0    60   ~ 0
gpio1
Text Label 1600 3350 0    60   ~ 0
xstep
Text Label 1600 3250 0    60   ~ 0
ystep
Text Label 1600 3150 0    60   ~ 0
gondola-charge
Text Label 1600 3050 0    60   ~ 0
butt-estop
Text Label 1600 2950 0    60   ~ 0
butt-power
Text Label 2800 3050 0    60   ~ 0
butt-reset
Text Label 2800 3150 0    60   ~ 0
enable
Text Label 2800 3250 0    60   ~ 0
ydir
Text Label 2800 3350 0    60   ~ 0
xdir
Text Label 2800 3650 0    60   ~ 0
xbee-rx
Text Label 2800 3750 0    60   ~ 0
xbee-tx
Text Label 2800 3850 0    60   ~ 0
7seg-le
Text Label 2800 3950 0    60   ~ 0
7seg-sdo
NoConn ~ 2150 2850
NoConn ~ 2650 2850
NoConn ~ 2650 2950
NoConn ~ 2150 4150
NoConn ~ 2150 4250
NoConn ~ 2150 4350
NoConn ~ 2150 4450
NoConn ~ 2650 4450
NoConn ~ 2650 4350
NoConn ~ 2650 4250
NoConn ~ 2650 4150
NoConn ~ 2650 4050
$Comp
L CONN_01X08 7seg1
U 1 1 575EB311
P 5300 1400
F 0 "7seg1" H 5300 1850 50  0000 C CNN
F 1 "7seg" V 5400 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 5300 1400 60  0001 C CNN
F 3 "" H 5300 1400 60  0000 C CNN
	1    5300 1400
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR06
U 1 1 575EB4CC
P 4750 1050
F 0 "#PWR06" H 4750 800 50  0001 C CNN
F 1 "Earth" H 4750 900 50  0001 C CNN
F 2 "" H 4750 1050 60  0000 C CNN
F 3 "" H 4750 1050 60  0000 C CNN
	1    4750 1050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 575EB4DD
P 4750 1250
F 0 "#PWR07" H 4750 1100 50  0001 C CNN
F 1 "+3.3V" H 4750 1390 50  0000 C CNN
F 2 "" H 4750 1250 60  0000 C CNN
F 3 "" H 4750 1250 60  0000 C CNN
	1    4750 1250
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR08
U 1 1 575EB4FE
P 4550 1350
F 0 "#PWR08" H 4550 1200 50  0001 C CNN
F 1 "+12V" H 4550 1490 50  0000 C CNN
F 2 "" H 4550 1350 60  0000 C CNN
F 3 "" H 4550 1350 60  0000 C CNN
	1    4550 1350
	0    -1   -1   0   
$EndComp
Text Label 4600 1450 0    60   ~ 0
7seg-sdo
Text Label 4600 1550 0    60   ~ 0
7seg-clk
Text Label 4600 1650 0    60   ~ 0
7seg-le
Text Label 4600 1750 0    60   ~ 0
7seg-!oe
$Comp
L CONN_01X02 24v1
U 1 1 575EB6B9
P 3250 1000
F 0 "24v1" H 3250 1150 50  0000 C CNN
F 1 "24v" V 3350 1000 50  0000 C CNN
F 2 "Connect:AK300-2" H 3250 1000 60  0001 C CNN
F 3 "" H 3250 1000 60  0000 C CNN
	1    3250 1000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 12/5v1
U 1 1 575EB702
P 3250 1600
F 0 "12/5v1" H 3250 1800 50  0000 C CNN
F 1 "12/5v" V 3350 1600 50  0000 C CNN
F 2 "Connect:AK300-3" H 3250 1600 60  0001 C CNN
F 3 "" H 3250 1600 60  0000 C CNN
	1    3250 1600
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR09
U 1 1 575EB76F
P 2800 950
F 0 "#PWR09" H 2800 700 50  0001 C CNN
F 1 "Earth" H 2800 800 50  0001 C CNN
F 2 "" H 2800 950 60  0000 C CNN
F 3 "" H 2800 950 60  0000 C CNN
	1    2800 950 
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR010
U 1 1 575EB7B2
P 2800 1500
F 0 "#PWR010" H 2800 1250 50  0001 C CNN
F 1 "Earth" H 2800 1350 50  0001 C CNN
F 2 "" H 2800 1500 60  0000 C CNN
F 3 "" H 2800 1500 60  0000 C CNN
	1    2800 1500
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR011
U 1 1 575EB7F7
P 2700 1600
F 0 "#PWR011" H 2700 1450 50  0001 C CNN
F 1 "+12V" H 2700 1740 50  0000 C CNN
F 2 "" H 2700 1600 60  0000 C CNN
F 3 "" H 2700 1600 60  0000 C CNN
	1    2700 1600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR012
U 1 1 575EB850
P 2850 1700
F 0 "#PWR012" H 2850 1550 50  0001 C CNN
F 1 "+5V" H 2850 1840 50  0000 C CNN
F 2 "" H 2850 1700 60  0000 C CNN
F 3 "" H 2850 1700 60  0000 C CNN
	1    2850 1700
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR013
U 1 1 575EB86C
P 2650 1050
F 0 "#PWR013" H 2650 900 50  0001 C CNN
F 1 "+24V" H 2650 1190 50  0000 C CNN
F 2 "" H 2650 1050 60  0000 C CNN
F 3 "" H 2650 1050 60  0000 C CNN
	1    2650 1050
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X03 servo1
U 1 1 575EBCD6
P 6600 1150
F 0 "servo1" H 6600 1350 50  0000 C CNN
F 1 "servo" V 6700 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6600 1150 60  0001 C CNN
F 3 "" H 6600 1150 60  0000 C CNN
	1    6600 1150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 575EBF52
P 5800 1150
F 0 "#PWR014" H 5800 1000 50  0001 C CNN
F 1 "+5V" H 5800 1290 50  0000 C CNN
F 2 "" H 5800 1150 60  0000 C CNN
F 3 "" H 5800 1150 60  0000 C CNN
	1    5800 1150
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR015
U 1 1 575EBF6C
P 5850 1050
F 0 "#PWR015" H 5850 800 50  0001 C CNN
F 1 "Earth" H 5850 900 50  0001 C CNN
F 2 "" H 5850 1050 60  0000 C CNN
F 3 "" H 5850 1050 60  0000 C CNN
	1    5850 1050
	0    1    1    0   
$EndComp
Text Label 5850 1250 0    60   ~ 0
7seg-!oe
$Comp
L xbee U1
U 1 1 575EC36A
P 6450 2450
F 0 "U1" H 6450 2450 60  0000 C CNN
F 1 "xbee" H 6450 2450 60  0000 C CNN
F 2 "fp:xbee" H 6450 2450 60  0001 C CNN
F 3 "" H 6450 2450 60  0000 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 575EC471
P 5750 2250
F 0 "#PWR016" H 5750 2100 50  0001 C CNN
F 1 "+3.3V" H 5750 2390 50  0000 C CNN
F 2 "" H 5750 2250 60  0000 C CNN
F 3 "" H 5750 2250 60  0000 C CNN
	1    5750 2250
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR017
U 1 1 575EC5A2
P 5650 3150
F 0 "#PWR017" H 5650 2900 50  0001 C CNN
F 1 "Earth" H 5650 3000 50  0001 C CNN
F 2 "" H 5650 3150 60  0000 C CNN
F 3 "" H 5650 3150 60  0000 C CNN
	1    5650 3150
	0    1    1    0   
$EndComp
Text Label 5450 2350 0    60   ~ 0
xbee-tx
Text Label 5450 2450 0    60   ~ 0
xbee-rx
NoConn ~ 7100 2250
NoConn ~ 7100 2350
NoConn ~ 7100 2450
NoConn ~ 7100 2550
NoConn ~ 7100 2650
NoConn ~ 7100 2750
NoConn ~ 7100 2850
NoConn ~ 7100 2950
NoConn ~ 7100 3050
NoConn ~ 6000 3050
NoConn ~ 6000 2950
NoConn ~ 6000 2850
NoConn ~ 6000 2750
NoConn ~ 6000 2650
NoConn ~ 6000 2550
NoConn ~ 7100 3150
$Comp
L PWR_FLAG #FLG018
U 1 1 575EE702
P 2800 1050
F 0 "#FLG018" H 2800 1145 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 1230 50  0000 C CNN
F 2 "" H 2800 1050 60  0000 C CNN
F 3 "" H 2800 1050 60  0000 C CNN
	1    2800 1050
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG019
U 1 1 575EE746
P 2950 1700
F 0 "#FLG019" H 2950 1795 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 1880 50  0000 C CNN
F 2 "" H 2950 1700 60  0000 C CNN
F 3 "" H 2950 1700 60  0000 C CNN
	1    2950 1700
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG020
U 1 1 575EE7A2
P 2950 1600
F 0 "#FLG020" H 2950 1695 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 1780 50  0000 C CNN
F 2 "" H 2950 1600 60  0000 C CNN
F 3 "" H 2950 1600 60  0000 C CNN
	1    2950 1600
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG021
U 1 1 575EF1F4
P 2800 2650
F 0 "#FLG021" H 2800 2745 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 2830 50  0000 C CNN
F 2 "" H 2800 2650 60  0000 C CNN
F 3 "" H 2800 2650 60  0000 C CNN
	1    2800 2650
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 12v1
U 1 1 575F2B15
P 1600 1050
F 0 "12v1" H 1600 1200 50  0000 C CNN
F 1 "fan" V 1700 1050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1600 1050 60  0001 C CNN
F 3 "" H 1600 1050 60  0000 C CNN
	1    1600 1050
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR022
U 1 1 575F2D0F
P 1400 1100
F 0 "#PWR022" H 1400 850 50  0001 C CNN
F 1 "Earth" H 1400 950 50  0001 C CNN
F 2 "" H 1400 1100 60  0000 C CNN
F 3 "" H 1400 1100 60  0000 C CNN
	1    1400 1100
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR023
U 1 1 575F2D65
P 1400 1000
F 0 "#PWR023" H 1400 850 50  0001 C CNN
F 1 "+12V" H 1400 1140 50  0000 C CNN
F 2 "" H 1400 1000 60  0000 C CNN
F 3 "" H 1400 1000 60  0000 C CNN
	1    1400 1000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X04 buttons1
U 1 1 575F2DA4
P 1550 1700
F 0 "buttons1" H 1550 1950 50  0000 C CNN
F 1 "buttons" V 1650 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 1550 1700 60  0001 C CNN
F 3 "" H 1550 1700 60  0000 C CNN
	1    1550 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 x-ext1
U 1 1 575F3489
P 2250 5500
F 0 "x-ext1" H 2250 5750 50  0000 C CNN
F 1 "CONN_01X04" V 2350 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 2250 5500 60  0001 C CNN
F 3 "" H 2250 5500 60  0000 C CNN
	1    2250 5500
	1    0    0    -1  
$EndComp
Text Label 800  1650 0    60   ~ 0
butt-reset
Text Label 800  1750 0    60   ~ 0
butt-estop
Text Label 800  1850 0    60   ~ 0
butt-power
$Comp
L +3.3V #PWR024
U 1 1 575F436F
P 800 1550
F 0 "#PWR024" H 800 1400 50  0001 C CNN
F 1 "+3.3V" H 800 1690 50  0000 C CNN
F 2 "" H 800 1550 60  0000 C CNN
F 3 "" H 800 1550 60  0000 C CNN
	1    800  1550
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR025
U 1 1 575F4DBD
P 1350 5650
F 0 "#PWR025" H 1350 5500 50  0001 C CNN
F 1 "+5V" H 1350 5790 50  0000 C CNN
F 2 "" H 1350 5650 60  0000 C CNN
F 3 "" H 1350 5650 60  0000 C CNN
	1    1350 5650
	0    -1   -1   0   
$EndComp
Text Label 1350 5450 0    60   ~ 0
xstep-ext
Text Label 1350 5350 0    60   ~ 0
enable-ext
Text Label 1350 5550 0    60   ~ 0
xdir-ext
$Comp
L CONN_01X04 y-ext1
U 1 1 575F50CF
P 2250 6250
F 0 "y-ext1" H 2250 6500 50  0000 C CNN
F 1 "CONN_01X04" V 2350 6250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 2250 6250 60  0001 C CNN
F 3 "" H 2250 6250 60  0000 C CNN
	1    2250 6250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR026
U 1 1 575F50D9
P 1350 6400
F 0 "#PWR026" H 1350 6250 50  0001 C CNN
F 1 "+5V" H 1350 6540 50  0000 C CNN
F 2 "" H 1350 6400 60  0000 C CNN
F 3 "" H 1350 6400 60  0000 C CNN
	1    1350 6400
	0    -1   -1   0   
$EndComp
Text Label 1350 6200 0    60   ~ 0
ystep-ext
Text Label 1350 6100 0    60   ~ 0
enable-ext
Text Label 1350 6300 0    60   ~ 0
ydir-ext
$Comp
L drv2250 U5
U 1 1 575FA9BD
P 9050 3250
F 0 "U5" H 9050 3250 60  0000 C CNN
F 1 "drv2250" H 9050 3400 60  0000 C CNN
F 2 "fp:drv8825" H 9050 3250 60  0001 C CNN
F 3 "" H 9050 3250 60  0000 C CNN
	1    9050 3250
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR027
U 1 1 575FABBB
P 9700 3700
F 0 "#PWR027" H 9700 3450 50  0001 C CNN
F 1 "Earth" H 9700 3550 50  0001 C CNN
F 2 "" H 9700 3700 60  0000 C CNN
F 3 "" H 9700 3700 60  0000 C CNN
	1    9700 3700
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR028
U 1 1 575FACDF
P 10150 3100
F 0 "#PWR028" H 10150 2850 50  0001 C CNN
F 1 "Earth" H 10150 2950 50  0001 C CNN
F 2 "" H 10150 3100 60  0000 C CNN
F 3 "" H 10150 3100 60  0000 C CNN
	1    10150 3100
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR029
U 1 1 575FBA2F
P 10150 3000
F 0 "#PWR029" H 10150 2850 50  0001 C CNN
F 1 "+24V" H 10150 3140 50  0000 C CNN
F 2 "" H 10150 3000 60  0000 C CNN
F 3 "" H 10150 3000 60  0000 C CNN
	1    10150 3000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR030
U 1 1 575FCFF7
P 8050 3400
F 0 "#PWR030" H 8050 3250 50  0001 C CNN
F 1 "+3.3V" H 8050 3540 50  0000 C CNN
F 2 "" H 8050 3400 60  0000 C CNN
F 3 "" H 8050 3400 60  0000 C CNN
	1    8050 3400
	0    -1   -1   0   
$EndComp
NoConn ~ 9700 3600
NoConn ~ 8500 3300
$Comp
L CONN_01X04 step-x1
U 1 1 575FE22A
P 9900 3350
F 0 "step-x1" H 9900 3600 50  0000 C CNN
F 1 "CONN_01X04" V 10000 3350 50  0000 C CNN
F 2 "Connect:AK300-4" H 9900 3350 60  0001 C CNN
F 3 "" H 9900 3350 60  0000 C CNN
	1    9900 3350
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 575FE520
P 10550 3050
F 0 "C1" H 10575 3150 50  0000 L CNN
F 1 "47uf" H 10575 2950 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x7.5mm_RM2.5" H 10588 2900 30  0001 C CNN
F 3 "" H 10550 3050 60  0000 C CNN
	1    10550 3050
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR031
U 1 1 575FE5CE
P 10550 2900
F 0 "#PWR031" H 10550 2750 50  0001 C CNN
F 1 "+24V" H 10550 3040 50  0000 C CNN
F 2 "" H 10550 2900 60  0000 C CNN
F 3 "" H 10550 2900 60  0000 C CNN
	1    10550 2900
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR032
U 1 1 575FE648
P 10550 3200
F 0 "#PWR032" H 10550 2950 50  0001 C CNN
F 1 "Earth" H 10550 3050 50  0001 C CNN
F 2 "" H 10550 3200 60  0000 C CNN
F 3 "" H 10550 3200 60  0000 C CNN
	1    10550 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 ms0
U 1 1 575FE987
P 7950 2600
F 0 "ms0" H 7950 2750 50  0000 C CNN
F 1 "ms0" V 8050 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 7950 2600 60  0001 C CNN
F 3 "" H 7950 2600 60  0000 C CNN
	1    7950 2600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR033
U 1 1 575FEA80
P 7750 2550
F 0 "#PWR033" H 7750 2400 50  0001 C CNN
F 1 "+3.3V" H 7750 2690 50  0000 C CNN
F 2 "" H 7750 2550 60  0000 C CNN
F 3 "" H 7750 2550 60  0000 C CNN
	1    7750 2550
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 ms1
U 1 1 575FEB95
P 8450 2600
F 0 "ms1" H 8450 2750 50  0000 C CNN
F 1 "ms1" V 8550 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8450 2600 60  0001 C CNN
F 3 "" H 8450 2600 60  0000 C CNN
	1    8450 2600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR034
U 1 1 575FEC2C
P 8250 2550
F 0 "#PWR034" H 8250 2400 50  0001 C CNN
F 1 "+3.3V" H 8250 2690 50  0000 C CNN
F 2 "" H 8250 2550 60  0000 C CNN
F 3 "" H 8250 2550 60  0000 C CNN
	1    8250 2550
	0    -1   -1   0   
$EndComp
$Comp
L LTV-827 U2
U 1 1 575FF48A
P 6150 4200
F 0 "U2" H 5950 4600 50  0000 L CNN
F 1 "LTV-827" H 6150 4600 50  0000 L CNN
F 2 "Sockets_DIP:DIP-8__300" H 5950 3850 50  0000 L CIN
F 3 "" H 6150 4100 50  0000 L CNN
	1    6150 4200
	1    0    0    -1  
$EndComp
$Comp
L LTV-827 U3
U 1 1 575FF573
P 6150 5050
F 0 "U3" H 5950 5450 50  0000 L CNN
F 1 "LTV-827" H 6150 5450 50  0000 L CNN
F 2 "Sockets_DIP:DIP-8__300" H 5950 4700 50  0000 L CIN
F 3 "" H 6150 4950 50  0000 L CNN
	1    6150 5050
	1    0    0    -1  
$EndComp
$Comp
L LTV-827 U4
U 1 1 575FF628
P 6150 5950
F 0 "U4" H 5950 6350 50  0000 L CNN
F 1 "LTV-827" H 6150 6350 50  0000 L CNN
F 2 "Sockets_DIP:DIP-8__300" H 5950 5600 50  0000 L CIN
F 3 "" H 6150 5850 50  0000 L CNN
	1    6150 5950
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 575FF9D6
P 5700 4100
F 0 "R7" V 5780 4100 50  0000 C CNN
F 1 "1k" V 5700 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5630 4100 30  0001 C CNN
F 3 "" H 5700 4100 30  0000 C CNN
	1    5700 4100
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 575FFA86
P 5700 4950
F 0 "R8" V 5780 4950 50  0000 C CNN
F 1 "1k" V 5700 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5630 4950 30  0001 C CNN
F 3 "" H 5700 4950 30  0000 C CNN
	1    5700 4950
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 575FFB47
P 5700 5250
F 0 "R9" V 5780 5250 50  0000 C CNN
F 1 "1k" V 5700 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5630 5250 30  0001 C CNN
F 3 "" H 5700 5250 30  0000 C CNN
	1    5700 5250
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 575FFBEF
P 5700 5850
F 0 "R14" V 5780 5850 50  0000 C CNN
F 1 "1k" V 5700 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5630 5850 30  0001 C CNN
F 3 "" H 5700 5850 30  0000 C CNN
	1    5700 5850
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 575FFCAA
P 5700 6150
F 0 "R15" V 5780 6150 50  0000 C CNN
F 1 "1k" V 5700 6150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5630 6150 30  0001 C CNN
F 3 "" H 5700 6150 30  0000 C CNN
	1    5700 6150
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR035
U 1 1 575FFD5A
P 5550 4100
F 0 "#PWR035" H 5550 3850 50  0001 C CNN
F 1 "Earth" H 5550 3950 50  0001 C CNN
F 2 "" H 5550 4100 60  0000 C CNN
F 3 "" H 5550 4100 60  0000 C CNN
	1    5550 4100
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR036
U 1 1 57600070
P 5550 4950
F 0 "#PWR036" H 5550 4700 50  0001 C CNN
F 1 "Earth" H 5550 4800 50  0001 C CNN
F 2 "" H 5550 4950 60  0000 C CNN
F 3 "" H 5550 4950 60  0000 C CNN
	1    5550 4950
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR037
U 1 1 5760010B
P 5550 5250
F 0 "#PWR037" H 5550 5000 50  0001 C CNN
F 1 "Earth" H 5550 5100 50  0001 C CNN
F 2 "" H 5550 5250 60  0000 C CNN
F 3 "" H 5550 5250 60  0000 C CNN
	1    5550 5250
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR038
U 1 1 576001A6
P 5550 5850
F 0 "#PWR038" H 5550 5600 50  0001 C CNN
F 1 "Earth" H 5550 5700 50  0001 C CNN
F 2 "" H 5550 5850 60  0000 C CNN
F 3 "" H 5550 5850 60  0000 C CNN
	1    5550 5850
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR039
U 1 1 576002A1
P 5550 6150
F 0 "#PWR039" H 5550 5900 50  0001 C CNN
F 1 "Earth" H 5550 6000 50  0001 C CNN
F 2 "" H 5550 6150 60  0000 C CNN
F 3 "" H 5550 6150 60  0000 C CNN
	1    5550 6150
	0    1    1    0   
$EndComp
Text Label 5350 3900 0    60   ~ 0
enable
Text Label 5350 4750 0    60   ~ 0
xstep
Text Label 5350 5050 0    60   ~ 0
xdir
Text Label 5350 5650 0    60   ~ 0
ystep
Text Label 5350 5950 0    60   ~ 0
ydir
$Comp
L R R16
U 1 1 576009A0
P 6600 3900
F 0 "R16" V 6680 3900 50  0000 C CNN
F 1 "1k" V 6600 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6530 3900 30  0001 C CNN
F 3 "" H 6600 3900 30  0000 C CNN
	1    6600 3900
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 57600B1D
P 6600 4750
F 0 "R17" V 6680 4750 50  0000 C CNN
F 1 "1k" V 6600 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6530 4750 30  0001 C CNN
F 3 "" H 6600 4750 30  0000 C CNN
	1    6600 4750
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 57600BE0
P 6600 5050
F 0 "R18" V 6680 5050 50  0000 C CNN
F 1 "1k" V 6600 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6530 5050 30  0001 C CNN
F 3 "" H 6600 5050 30  0000 C CNN
	1    6600 5050
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 57600C9A
P 6600 5650
F 0 "R19" V 6680 5650 50  0000 C CNN
F 1 "1k" V 6600 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6530 5650 30  0001 C CNN
F 3 "" H 6600 5650 30  0000 C CNN
	1    6600 5650
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 57600D67
P 6600 5950
F 0 "R20" V 6680 5950 50  0000 C CNN
F 1 "1k" V 6600 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6530 5950 30  0001 C CNN
F 3 "" H 6600 5950 30  0000 C CNN
	1    6600 5950
	0    1    1    0   
$EndComp
NoConn ~ 5850 4200
NoConn ~ 5850 4400
NoConn ~ 6450 4200
NoConn ~ 6450 4400
$Comp
L +5V #PWR040
U 1 1 5760232E
P 6750 3900
F 0 "#PWR040" H 6750 3750 50  0001 C CNN
F 1 "+5V" H 6750 4040 50  0000 C CNN
F 2 "" H 6750 3900 60  0000 C CNN
F 3 "" H 6750 3900 60  0000 C CNN
	1    6750 3900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR041
U 1 1 57602D03
P 6750 4750
F 0 "#PWR041" H 6750 4600 50  0001 C CNN
F 1 "+5V" H 6750 4890 50  0000 C CNN
F 2 "" H 6750 4750 60  0000 C CNN
F 3 "" H 6750 4750 60  0000 C CNN
	1    6750 4750
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR042
U 1 1 57602DAA
P 6750 5050
F 0 "#PWR042" H 6750 4900 50  0001 C CNN
F 1 "+5V" H 6750 5190 50  0000 C CNN
F 2 "" H 6750 5050 60  0000 C CNN
F 3 "" H 6750 5050 60  0000 C CNN
	1    6750 5050
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR043
U 1 1 57602E51
P 6750 5650
F 0 "#PWR043" H 6750 5500 50  0001 C CNN
F 1 "+5V" H 6750 5790 50  0000 C CNN
F 2 "" H 6750 5650 60  0000 C CNN
F 3 "" H 6750 5650 60  0000 C CNN
	1    6750 5650
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR044
U 1 1 57602EF8
P 6750 5950
F 0 "#PWR044" H 6750 5800 50  0001 C CNN
F 1 "+5V" H 6750 6090 50  0000 C CNN
F 2 "" H 6750 5950 60  0000 C CNN
F 3 "" H 6750 5950 60  0000 C CNN
	1    6750 5950
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR045
U 1 1 57602F9F
P 6450 4100
F 0 "#PWR045" H 6450 3850 50  0001 C CNN
F 1 "Earth" H 6450 3950 50  0001 C CNN
F 2 "" H 6450 4100 60  0000 C CNN
F 3 "" H 6450 4100 60  0000 C CNN
	1    6450 4100
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR046
U 1 1 576030EC
P 6450 4950
F 0 "#PWR046" H 6450 4700 50  0001 C CNN
F 1 "Earth" H 6450 4800 50  0001 C CNN
F 2 "" H 6450 4950 60  0000 C CNN
F 3 "" H 6450 4950 60  0000 C CNN
	1    6450 4950
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR047
U 1 1 57603193
P 6450 5250
F 0 "#PWR047" H 6450 5000 50  0001 C CNN
F 1 "Earth" H 6450 5100 50  0001 C CNN
F 2 "" H 6450 5250 60  0000 C CNN
F 3 "" H 6450 5250 60  0000 C CNN
	1    6450 5250
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR048
U 1 1 5760323A
P 6450 5850
F 0 "#PWR048" H 6450 5600 50  0001 C CNN
F 1 "Earth" H 6450 5700 50  0001 C CNN
F 2 "" H 6450 5850 60  0000 C CNN
F 3 "" H 6450 5850 60  0000 C CNN
	1    6450 5850
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR049
U 1 1 576032E1
P 6450 6150
F 0 "#PWR049" H 6450 5900 50  0001 C CNN
F 1 "Earth" H 6450 6000 50  0001 C CNN
F 2 "" H 6450 6150 60  0000 C CNN
F 3 "" H 6450 6150 60  0000 C CNN
	1    6450 6150
	0    -1   -1   0   
$EndComp
Text Label 6950 4000 0    60   ~ 0
enable-ext
Text Label 6900 4850 0    60   ~ 0
xstep-ext
Text Label 6900 5150 0    60   ~ 0
xdir-ext
Text Label 6900 5750 0    60   ~ 0
ystep-ext
Text Label 6900 6050 0    60   ~ 0
ydir-ext
Text Label 7950 3000 0    60   ~ 0
enable-ext
Text Label 7950 3600 0    60   ~ 0
xstep-ext
Text Label 7950 3700 0    60   ~ 0
xdir-ext
$Comp
L drv2250 U6
U 1 1 5760774B
P 9100 5050
F 0 "U6" H 9100 5050 60  0000 C CNN
F 1 "drv2250" H 9100 5200 60  0000 C CNN
F 2 "fp:drv8825" H 9100 5050 60  0001 C CNN
F 3 "" H 9100 5050 60  0000 C CNN
	1    9100 5050
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR050
U 1 1 57607751
P 9750 5500
F 0 "#PWR050" H 9750 5250 50  0001 C CNN
F 1 "Earth" H 9750 5350 50  0001 C CNN
F 2 "" H 9750 5500 60  0000 C CNN
F 3 "" H 9750 5500 60  0000 C CNN
	1    9750 5500
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR051
U 1 1 57607758
P 10200 4900
F 0 "#PWR051" H 10200 4650 50  0001 C CNN
F 1 "Earth" H 10200 4750 50  0001 C CNN
F 2 "" H 10200 4900 60  0000 C CNN
F 3 "" H 10200 4900 60  0000 C CNN
	1    10200 4900
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR052
U 1 1 5760775F
P 10200 4800
F 0 "#PWR052" H 10200 4650 50  0001 C CNN
F 1 "+24V" H 10200 4940 50  0000 C CNN
F 2 "" H 10200 4800 60  0000 C CNN
F 3 "" H 10200 4800 60  0000 C CNN
	1    10200 4800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR053
U 1 1 57607765
P 8100 5200
F 0 "#PWR053" H 8100 5050 50  0001 C CNN
F 1 "+3.3V" H 8100 5340 50  0000 C CNN
F 2 "" H 8100 5200 60  0000 C CNN
F 3 "" H 8100 5200 60  0000 C CNN
	1    8100 5200
	0    -1   -1   0   
$EndComp
NoConn ~ 9750 5400
NoConn ~ 8550 5100
$Comp
L CONN_01X04 step-y1
U 1 1 57607771
P 9950 5150
F 0 "step-y1" H 9950 5400 50  0000 C CNN
F 1 "CONN_01X04" V 10050 5150 50  0000 C CNN
F 2 "Connect:AK300-4" H 9950 5150 60  0001 C CNN
F 3 "" H 9950 5150 60  0000 C CNN
	1    9950 5150
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 57607777
P 10600 4850
F 0 "C2" H 10625 4950 50  0000 L CNN
F 1 "47uf" H 10625 4750 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x7.5mm_RM2.5" H 10638 4700 30  0001 C CNN
F 3 "" H 10600 4850 60  0000 C CNN
	1    10600 4850
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR054
U 1 1 5760777D
P 10600 4700
F 0 "#PWR054" H 10600 4550 50  0001 C CNN
F 1 "+24V" H 10600 4840 50  0000 C CNN
F 2 "" H 10600 4700 60  0000 C CNN
F 3 "" H 10600 4700 60  0000 C CNN
	1    10600 4700
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR055
U 1 1 57607783
P 10600 5000
F 0 "#PWR055" H 10600 4750 50  0001 C CNN
F 1 "Earth" H 10600 4850 50  0001 C CNN
F 2 "" H 10600 5000 60  0000 C CNN
F 3 "" H 10600 5000 60  0000 C CNN
	1    10600 5000
	1    0    0    -1  
$EndComp
Text Label 8000 4800 0    60   ~ 0
enable-ext
Text Label 8000 5400 0    60   ~ 0
ystep-ext
Text Label 8000 5500 0    60   ~ 0
ydir-ext
$Sheet
S 7450 1100 1200 550 
U 5761147D
F0 "leds" 60
F1 "ledssch.sch" 60
$EndSheet
Text GLabel 3250 3150 2    60   Input ~ 0
enable
$Sheet
S 8900 1100 1150 550 
U 57612EB1
F0 "gondola" 60
F1 "gondola.sch" 60
$EndSheet
Text GLabel 1600 3150 0    60   Input ~ 0
gondola-charge
Text GLabel 1600 3550 0    60   Input ~ 0
x-home
Text GLabel 3250 3550 2    60   Input ~ 0
y-home
$Comp
L CONN_01X03 en1
U 1 1 5761780E
P 1600 7000
F 0 "en1" H 1600 7200 50  0000 C CNN
F 1 "enable pull  up" V 1700 7000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1600 7000 60  0001 C CNN
F 3 "" H 1600 7000 60  0000 C CNN
	1    1600 7000
	1    0    0    -1  
$EndComp
Text GLabel 1350 7000 0    60   Input ~ 0
enable
$Comp
L R R27
U 1 1 57617A10
P 1250 6900
F 0 "R27" V 1330 6900 50  0000 C CNN
F 1 "10k" V 1250 6900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1180 6900 30  0001 C CNN
F 3 "" H 1250 6900 30  0000 C CNN
	1    1250 6900
	0    1    1    0   
$EndComp
$Comp
L R R28
U 1 1 57617B1D
P 1250 7100
F 0 "R28" V 1330 7100 50  0000 C CNN
F 1 "10k" V 1250 7100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1180 7100 30  0001 C CNN
F 3 "" H 1250 7100 30  0000 C CNN
	1    1250 7100
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR056
U 1 1 57617BBF
P 1100 7100
F 0 "#PWR056" H 1100 6850 50  0001 C CNN
F 1 "Earth" H 1100 6950 50  0001 C CNN
F 2 "" H 1100 7100 60  0000 C CNN
F 3 "" H 1100 7100 60  0000 C CNN
	1    1100 7100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR057
U 1 1 57617C48
P 1100 6900
F 0 "#PWR057" H 1100 6750 50  0001 C CNN
F 1 "+3.3V" H 1100 7040 50  0000 C CNN
F 2 "" H 1100 6900 60  0000 C CNN
F 3 "" H 1100 6900 60  0000 C CNN
	1    1100 6900
	1    0    0    -1  
$EndComp
$Sheet
S 9000 1900 1150 450 
U 575FC29A
F0 "homing" 60
F1 "homing.sch" 60
$EndSheet
Text Label 7750 2850 0    60   ~ 0
ms0
Text Label 8250 2850 0    60   ~ 0
ms1
Text Label 7900 4900 0    60   ~ 0
ms0
Text Label 8300 5000 0    60   ~ 0
ms1
Text Label 3100 2750 0    60   ~ 0
bb-5v
Text Label 1600 2750 0    60   ~ 0
bb-5v
$Comp
L CONN_01X02 bb-5v1
U 1 1 576146AF
P 3250 2200
F 0 "bb-5v1" H 3250 2350 50  0000 C CNN
F 1 "bb-5v" V 3350 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3250 2200 60  0001 C CNN
F 3 "" H 3250 2200 60  0000 C CNN
	1    3250 2200
	1    0    0    -1  
$EndComp
Text Label 2700 2150 0    60   ~ 0
bb-5v
$Comp
L +5V #PWR058
U 1 1 576148FB
P 2700 2250
F 0 "#PWR058" H 2700 2100 50  0001 C CNN
F 1 "+5V" H 2700 2390 50  0000 C CNN
F 2 "" H 2700 2250 60  0000 C CNN
F 3 "" H 2700 2250 60  0000 C CNN
	1    2700 2250
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X08 P4
U 1 1 57619E3D
P 3600 5650
F 0 "P4" H 3600 6100 50  0000 C CNN
F 1 "CONN_01X08" V 3700 5650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 3600 5650 60  0001 C CNN
F 3 "" H 3600 5650 60  0000 C CNN
	1    3600 5650
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR059
U 1 1 57619FF0
P 3100 6000
F 0 "#PWR059" H 3100 5750 50  0001 C CNN
F 1 "Earth" H 3100 5850 50  0001 C CNN
F 2 "" H 3100 6000 60  0000 C CNN
F 3 "" H 3100 6000 60  0000 C CNN
	1    3100 6000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR060
U 1 1 5761AE3A
P 3150 5300
F 0 "#PWR060" H 3150 5150 50  0001 C CNN
F 1 "+3.3V" H 3150 5440 50  0000 C CNN
F 2 "" H 3150 5300 60  0000 C CNN
F 3 "" H 3150 5300 60  0000 C CNN
	1    3150 5300
	0    -1   -1   0   
$EndComp
Text Label 3100 5400 0    60   ~ 0
gpio1
Text Label 3100 5500 0    60   ~ 0
gpio2
Text Label 3100 5600 0    60   ~ 0
gpio3
Text Label 3100 5700 0    60   ~ 0
gpio4
Text Label 3100 5800 0    60   ~ 0
gpio5
$Comp
L Earth #PWR061
U 1 1 5761D6BA
P 3250 4750
F 0 "#PWR061" H 3250 4500 50  0001 C CNN
F 1 "Earth" H 3250 4600 50  0001 C CNN
F 2 "" H 3250 4750 60  0000 C CNN
F 3 "" H 3250 4750 60  0000 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 step-x2
U 1 1 5761EDB8
P 10300 3350
F 0 "step-x2" H 10300 3600 50  0000 C CNN
F 1 "CONN_01X04" V 10400 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 10300 3350 60  0001 C CNN
F 3 "" H 10300 3350 60  0000 C CNN
	1    10300 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 step-y2
U 1 1 5761F3B6
P 10300 5150
F 0 "step-y2" H 10300 5400 50  0000 C CNN
F 1 "CONN_01X04" V 10400 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 10300 5150 60  0001 C CNN
F 3 "" H 10300 5150 60  0000 C CNN
	1    10300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2550 2150 2550
Wire Wire Line
	2650 2550 3300 2550
Wire Wire Line
	2000 2650 2150 2650
Wire Wire Line
	2650 2650 2850 2650
Wire Wire Line
	2150 2950 1600 2950
Wire Wire Line
	2150 3050 1600 3050
Wire Wire Line
	2150 3150 1600 3150
Wire Wire Line
	2150 3250 1600 3250
Wire Wire Line
	2150 3350 1600 3350
Wire Wire Line
	2150 3550 1600 3550
Wire Wire Line
	2150 3650 1600 3650
Wire Wire Line
	2150 3750 1600 3750
Wire Wire Line
	2150 3850 1600 3850
Wire Wire Line
	2150 3950 1600 3950
Wire Wire Line
	2150 4050 1600 4050
Wire Wire Line
	2650 3950 3250 3950
Wire Wire Line
	2650 3850 3250 3850
Wire Wire Line
	2650 3750 3250 3750
Wire Wire Line
	2650 3650 3250 3650
Wire Wire Line
	2650 3550 3250 3550
Wire Wire Line
	2650 3350 3250 3350
Wire Wire Line
	2650 3250 3250 3250
Wire Wire Line
	2650 3150 3250 3150
Wire Wire Line
	2650 3050 3250 3050
Wire Wire Line
	2150 4650 2150 4750
Wire Wire Line
	2150 4750 1600 4750
Wire Wire Line
	2650 4650 2650 4750
Wire Wire Line
	2650 4750 3300 4750
Wire Wire Line
	2650 4550 3300 4550
Wire Wire Line
	2150 4550 1600 4550
Wire Wire Line
	5100 1150 5100 1050
Wire Wire Line
	5100 1050 4750 1050
Wire Wire Line
	5100 1250 4750 1250
Wire Wire Line
	4550 1350 5100 1350
Wire Wire Line
	5100 1450 4550 1450
Wire Wire Line
	5100 1550 4550 1550
Wire Wire Line
	5100 1650 4550 1650
Wire Wire Line
	5100 1750 4550 1750
Wire Wire Line
	2800 950  3050 950 
Wire Wire Line
	2800 1500 3050 1500
Wire Wire Line
	2650 1050 3050 1050
Wire Wire Line
	2700 1600 3050 1600
Wire Wire Line
	2850 1700 3050 1700
Wire Wire Line
	5850 1050 6400 1050
Wire Wire Line
	6400 1250 5850 1250
Wire Wire Line
	5800 1150 6400 1150
Wire Wire Line
	6000 2350 5400 2350
Wire Wire Line
	6000 2250 5750 2250
Wire Wire Line
	6000 2450 5400 2450
Wire Wire Line
	6000 3150 5650 3150
Connection ~ 2800 2650
Connection ~ 2800 1050
Connection ~ 2950 1600
Connection ~ 2950 1700
Wire Wire Line
	1350 1550 800  1550
Wire Wire Line
	1350 1650 800  1650
Wire Wire Line
	1350 1750 800  1750
Wire Wire Line
	1350 1850 800  1850
Wire Wire Line
	2050 5350 1350 5350
Wire Wire Line
	2050 5450 1350 5450
Wire Wire Line
	2050 5550 1350 5550
Wire Wire Line
	2050 5650 1350 5650
Wire Wire Line
	2050 6100 1350 6100
Wire Wire Line
	2050 6200 1350 6200
Wire Wire Line
	2050 6300 1350 6300
Wire Wire Line
	2050 6400 1350 6400
Wire Wire Line
	9700 3100 10150 3100
Wire Wire Line
	9700 3000 10150 3000
Wire Wire Line
	8050 3400 8500 3400
Wire Wire Line
	8150 3400 8150 3500
Wire Wire Line
	8150 3500 8500 3500
Connection ~ 8150 3400
Wire Wire Line
	8250 2650 8250 3200
Connection ~ 8250 3200
Wire Wire Line
	8250 3200 8500 3200
Wire Wire Line
	5850 3900 5300 3900
Wire Wire Line
	5850 4750 5300 4750
Wire Wire Line
	5850 5050 5300 5050
Wire Wire Line
	5850 5650 5300 5650
Wire Wire Line
	5850 5950 5300 5950
Wire Wire Line
	6450 3900 6450 4000
Wire Wire Line
	6450 4000 7300 4000
Wire Wire Line
	6450 4750 6450 4850
Wire Wire Line
	6450 4850 7300 4850
Wire Wire Line
	6450 5050 6450 5150
Wire Wire Line
	6450 5150 7300 5150
Wire Wire Line
	6450 5650 6450 5750
Wire Wire Line
	6450 5750 7300 5750
Wire Wire Line
	6450 5950 6450 6050
Wire Wire Line
	6450 6050 7300 6050
Wire Wire Line
	8500 3600 7950 3600
Wire Wire Line
	8500 3700 7950 3700
Wire Wire Line
	8500 3000 7950 3000
Wire Wire Line
	7750 2650 7750 3100
Wire Wire Line
	7750 3100 8500 3100
Wire Wire Line
	9750 4900 10200 4900
Wire Wire Line
	9750 4800 10200 4800
Wire Wire Line
	8100 5200 8550 5200
Wire Wire Line
	8200 5200 8200 5300
Wire Wire Line
	8200 5300 8550 5300
Connection ~ 8200 5200
Connection ~ 8300 5000
Wire Wire Line
	8300 5000 8550 5000
Wire Wire Line
	8550 5400 8000 5400
Wire Wire Line
	8550 5500 8000 5500
Wire Wire Line
	8550 4800 8000 4800
Wire Wire Line
	7800 4900 8550 4900
Wire Wire Line
	1350 7000 1400 7000
Wire Wire Line
	2150 2750 1600 2750
Wire Wire Line
	2650 2750 3250 2750
Wire Wire Line
	3050 2150 2700 2150
Wire Wire Line
	3050 2250 2700 2250
Wire Wire Line
	3150 5300 3400 5300
Wire Wire Line
	3100 6000 3400 6000
Wire Wire Line
	3400 6000 3400 5900
Wire Wire Line
	3400 5400 3100 5400
Wire Wire Line
	3400 5500 3100 5500
Wire Wire Line
	3400 5600 3100 5600
Wire Wire Line
	3400 5700 3100 5700
Wire Wire Line
	3400 5800 3100 5800
Wire Wire Line
	10100 5000 9750 5000
Wire Wire Line
	10100 5100 9750 5100
Wire Wire Line
	9750 5200 10100 5200
Wire Wire Line
	10100 5300 9750 5300
Wire Wire Line
	9700 3200 10100 3200
Wire Wire Line
	10100 3300 9700 3300
Wire Wire Line
	10100 3400 9700 3400
Wire Wire Line
	10100 3500 9700 3500
$Sheet
S 7550 1850 1000 350 
U 576D4B09
F0 "solenoids" 60
F1 "solenoids.sch" 60
$EndSheet
$Comp
L CONN_01X01 pwm1
U 1 1 576D5667
P 4900 2000
F 0 "pwm1" H 4900 2100 50  0000 C CNN
F 1 "CONN_01X01" V 5000 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4900 2000 60  0001 C CNN
F 3 "" H 4900 2000 60  0000 C CNN
	1    4900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2000 4700 1750
Wire Wire Line
	4700 1750 4750 1750
Connection ~ 4750 1750
$Sheet
S 6800 1500 550  200 
U 576D5A6D
F0 "temp" 60
F1 "temp.sch" 60
$EndSheet
Text GLabel 2650 3450 2    60   Input ~ 0
sda
Text GLabel 2150 3450 0    60   Input ~ 0
scl
$EndSCHEMATC