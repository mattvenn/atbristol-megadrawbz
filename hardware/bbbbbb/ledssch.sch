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
LIBS:bbbbbb-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L LED D1
U 1 1 57612077
P 2300 3150
F 0 "D1" H 2300 3250 50  0000 C CNN
F 1 "LED" H 2300 3050 50  0000 C CNN
F 2 "" H 2300 3150 60  0000 C CNN
F 3 "" H 2300 3150 60  0000 C CNN
	1    2300 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5761207E
P 2300 2800
F 0 "R2" V 2380 2800 50  0000 C CNN
F 1 "R" V 2300 2800 50  0000 C CNN
F 2 "" V 2230 2800 30  0000 C CNN
F 3 "" H 2300 2800 30  0000 C CNN
	1    2300 2800
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR065
U 1 1 57612085
P 2300 3350
F 0 "#PWR065" H 2300 3100 50  0001 C CNN
F 1 "Earth" H 2300 3200 50  0001 C CNN
F 2 "" H 2300 3350 60  0000 C CNN
F 3 "" H 2300 3350 60  0000 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2650 2300 2300
$Comp
L LED D2
U 1 1 5761208C
P 2650 3150
F 0 "D2" H 2650 3250 50  0000 C CNN
F 1 "LED" H 2650 3050 50  0000 C CNN
F 2 "" H 2650 3150 60  0000 C CNN
F 3 "" H 2650 3150 60  0000 C CNN
	1    2650 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 57612093
P 2650 2800
F 0 "R3" V 2730 2800 50  0000 C CNN
F 1 "R" V 2650 2800 50  0000 C CNN
F 2 "" V 2580 2800 30  0000 C CNN
F 3 "" H 2650 2800 30  0000 C CNN
	1    2650 2800
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR066
U 1 1 5761209A
P 2650 3350
F 0 "#PWR066" H 2650 3100 50  0001 C CNN
F 1 "Earth" H 2650 3200 50  0001 C CNN
F 2 "" H 2650 3350 60  0000 C CNN
F 3 "" H 2650 3350 60  0000 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2650 2650 2300
$Comp
L LED D3
U 1 1 576120A1
P 3000 3150
F 0 "D3" H 3000 3250 50  0000 C CNN
F 1 "LED" H 3000 3050 50  0000 C CNN
F 2 "" H 3000 3150 60  0000 C CNN
F 3 "" H 3000 3150 60  0000 C CNN
	1    3000 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 576120A8
P 3000 2800
F 0 "R5" V 3080 2800 50  0000 C CNN
F 1 "R" V 3000 2800 50  0000 C CNN
F 2 "" V 2930 2800 30  0000 C CNN
F 3 "" H 3000 2800 30  0000 C CNN
	1    3000 2800
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR067
U 1 1 576120AF
P 3000 3350
F 0 "#PWR067" H 3000 3100 50  0001 C CNN
F 1 "Earth" H 3000 3200 50  0001 C CNN
F 2 "" H 3000 3350 60  0000 C CNN
F 3 "" H 3000 3350 60  0000 C CNN
	1    3000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2650 3000 2300
$Comp
L +24V #PWR068
U 1 1 576120B6
P 2300 2300
F 0 "#PWR068" H 2300 2150 50  0001 C CNN
F 1 "+24V" H 2300 2440 50  0000 C CNN
F 2 "" H 2300 2300 60  0000 C CNN
F 3 "" H 2300 2300 60  0000 C CNN
	1    2300 2300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR069
U 1 1 576120BC
P 2650 2300
F 0 "#PWR069" H 2650 2150 50  0001 C CNN
F 1 "+12V" H 2650 2440 50  0000 C CNN
F 2 "" H 2650 2300 60  0000 C CNN
F 3 "" H 2650 2300 60  0000 C CNN
	1    2650 2300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR070
U 1 1 576120C2
P 3000 2300
F 0 "#PWR070" H 3000 2150 50  0001 C CNN
F 1 "+5V" H 3000 2440 50  0000 C CNN
F 2 "" H 3000 2300 60  0000 C CNN
F 3 "" H 3000 2300 60  0000 C CNN
	1    3000 2300
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 57612938
P 4800 2750
F 0 "D5" H 4800 2850 50  0000 C CNN
F 1 "LED" H 4800 2650 50  0000 C CNN
F 2 "" H 4800 2750 60  0000 C CNN
F 3 "" H 4800 2750 60  0000 C CNN
	1    4800 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R21
U 1 1 5761293F
P 4800 2400
F 0 "R21" V 4880 2400 50  0000 C CNN
F 1 "R" V 4800 2400 50  0000 C CNN
F 2 "" V 4730 2400 30  0000 C CNN
F 3 "" H 4800 2400 30  0000 C CNN
	1    4800 2400
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR071
U 1 1 57612946
P 4800 3350
F 0 "#PWR071" H 4800 3100 50  0001 C CNN
F 1 "Earth" H 4800 3200 50  0001 C CNN
F 2 "" H 4800 3350 60  0000 C CNN
F 3 "" H 4800 3350 60  0000 C CNN
	1    4800 3350
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q2
U 1 1 5761294C
P 4700 3150
F 0 "Q2" H 5000 3200 50  0000 R CNN
F 1 "Q_NPN_BCE" H 5300 3100 50  0000 R CNN
F 2 "" H 4900 3250 29  0000 C CNN
F 3 "" H 4700 3150 60  0000 C CNN
	1    4700 3150
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 57612953
P 4350 3150
F 0 "R6" V 4430 3150 50  0000 C CNN
F 1 "R" V 4350 3150 50  0000 C CNN
F 2 "" V 4280 3150 30  0000 C CNN
F 3 "" H 4350 3150 30  0000 C CNN
	1    4350 3150
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR072
U 1 1 5761295A
P 4800 2250
F 0 "#PWR072" H 4800 2100 50  0001 C CNN
F 1 "+3.3V" H 4800 2390 50  0000 C CNN
F 2 "" H 4800 2250 60  0000 C CNN
F 3 "" H 4800 2250 60  0000 C CNN
	1    4800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3150 4200 3150
Text GLabel 3900 3150 0    60   Input ~ 0
enable
$Comp
L LED D4
U 1 1 576134A4
P 4800 4500
F 0 "D4" H 4800 4600 50  0000 C CNN
F 1 "LED" H 4800 4400 50  0000 C CNN
F 2 "" H 4800 4500 60  0000 C CNN
F 3 "" H 4800 4500 60  0000 C CNN
	1    4800 4500
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 576134AA
P 4800 4150
F 0 "R4" V 4880 4150 50  0000 C CNN
F 1 "R" V 4800 4150 50  0000 C CNN
F 2 "" V 4730 4150 30  0000 C CNN
F 3 "" H 4800 4150 30  0000 C CNN
	1    4800 4150
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR073
U 1 1 576134B0
P 4800 5100
F 0 "#PWR073" H 4800 4850 50  0001 C CNN
F 1 "Earth" H 4800 4950 50  0001 C CNN
F 2 "" H 4800 5100 60  0000 C CNN
F 3 "" H 4800 5100 60  0000 C CNN
	1    4800 5100
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q1
U 1 1 576134B6
P 4700 4900
F 0 "Q1" H 5000 4950 50  0000 R CNN
F 1 "Q_NPN_BCE" H 5300 4850 50  0000 R CNN
F 2 "" H 4900 5000 29  0000 C CNN
F 3 "" H 4700 4900 60  0000 C CNN
	1    4700 4900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 576134BC
P 4350 4900
F 0 "R1" V 4430 4900 50  0000 C CNN
F 1 "R" V 4350 4900 50  0000 C CNN
F 2 "" V 4280 4900 30  0000 C CNN
F 3 "" H 4350 4900 30  0000 C CNN
	1    4350 4900
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR074
U 1 1 576134C2
P 4800 4000
F 0 "#PWR074" H 4800 3850 50  0001 C CNN
F 1 "+3.3V" H 4800 4140 50  0000 C CNN
F 2 "" H 4800 4000 60  0000 C CNN
F 3 "" H 4800 4000 60  0000 C CNN
	1    4800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4900 4200 4900
Text GLabel 3900 4900 0    60   Input ~ 0
gondola-charge
$Comp
L LED D6
U 1 1 57613DCD
P 7650 2750
F 0 "D6" H 7650 2850 50  0000 C CNN
F 1 "x home" H 7650 2650 50  0000 C CNN
F 2 "" H 7650 2750 60  0000 C CNN
F 3 "" H 7650 2750 60  0000 C CNN
	1    7650 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R25
U 1 1 57613DD3
P 7650 2400
F 0 "R25" V 7730 2400 50  0000 C CNN
F 1 "R" V 7650 2400 50  0000 C CNN
F 2 "" V 7580 2400 30  0000 C CNN
F 3 "" H 7650 2400 30  0000 C CNN
	1    7650 2400
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR075
U 1 1 57613DD9
P 7650 3350
F 0 "#PWR075" H 7650 3100 50  0001 C CNN
F 1 "Earth" H 7650 3200 50  0001 C CNN
F 2 "" H 7650 3350 60  0000 C CNN
F 3 "" H 7650 3350 60  0000 C CNN
	1    7650 3350
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q4
U 1 1 57613DDF
P 7550 3150
F 0 "Q4" H 7850 3200 50  0000 R CNN
F 1 "Q_NPN_BCE" H 8150 3100 50  0000 R CNN
F 2 "" H 7750 3250 29  0000 C CNN
F 3 "" H 7550 3150 60  0000 C CNN
	1    7550 3150
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 57613DE5
P 7200 3150
F 0 "R23" V 7280 3150 50  0000 C CNN
F 1 "R" V 7200 3150 50  0000 C CNN
F 2 "" V 7130 3150 30  0000 C CNN
F 3 "" H 7200 3150 30  0000 C CNN
	1    7200 3150
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR076
U 1 1 57613DEB
P 7650 2250
F 0 "#PWR076" H 7650 2100 50  0001 C CNN
F 1 "+3.3V" H 7650 2390 50  0000 C CNN
F 2 "" H 7650 2250 60  0000 C CNN
F 3 "" H 7650 2250 60  0000 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3150 7050 3150
Text GLabel 6750 3150 0    60   Input ~ 0
x-home
$Comp
L LED D7
U 1 1 57613FEB
P 7650 4500
F 0 "D7" H 7650 4600 50  0000 C CNN
F 1 "y home" H 7650 4400 50  0000 C CNN
F 2 "" H 7650 4500 60  0000 C CNN
F 3 "" H 7650 4500 60  0000 C CNN
	1    7650 4500
	0    -1   -1   0   
$EndComp
$Comp
L R R26
U 1 1 57613FF1
P 7650 4150
F 0 "R26" V 7730 4150 50  0000 C CNN
F 1 "R" V 7650 4150 50  0000 C CNN
F 2 "" V 7580 4150 30  0000 C CNN
F 3 "" H 7650 4150 30  0000 C CNN
	1    7650 4150
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR077
U 1 1 57613FF7
P 7650 5100
F 0 "#PWR077" H 7650 4850 50  0001 C CNN
F 1 "Earth" H 7650 4950 50  0001 C CNN
F 2 "" H 7650 5100 60  0000 C CNN
F 3 "" H 7650 5100 60  0000 C CNN
	1    7650 5100
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q5
U 1 1 57613FFD
P 7550 4900
F 0 "Q5" H 7850 4950 50  0000 R CNN
F 1 "Q_NPN_BCE" H 8150 4850 50  0000 R CNN
F 2 "" H 7750 5000 29  0000 C CNN
F 3 "" H 7550 4900 60  0000 C CNN
	1    7550 4900
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 57614003
P 7200 4900
F 0 "R24" V 7280 4900 50  0000 C CNN
F 1 "R" V 7200 4900 50  0000 C CNN
F 2 "" V 7130 4900 30  0000 C CNN
F 3 "" H 7200 4900 30  0000 C CNN
	1    7200 4900
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR078
U 1 1 57614009
P 7650 4000
F 0 "#PWR078" H 7650 3850 50  0001 C CNN
F 1 "+3.3V" H 7650 4140 50  0000 C CNN
F 2 "" H 7650 4000 60  0000 C CNN
F 3 "" H 7650 4000 60  0000 C CNN
	1    7650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4900 7050 4900
Text GLabel 6750 4900 0    60   Input ~ 0
y-home
$EndSCHEMATC
