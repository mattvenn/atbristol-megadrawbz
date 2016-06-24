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
Sheet 5 6
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
L CONN_01X02 solenoids1
U 1 1 576D4DF7
P 5900 3050
F 0 "solenoids1" H 5900 3200 50  0000 C CNN
F 1 "solenoids" V 6000 3050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5900 3050 60  0001 C CNN
F 3 "" H 5900 3050 60  0000 C CNN
	1    5900 3050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 sol1
U 1 1 576D4FA8
P 6750 2000
F 0 "sol1" H 6750 2200 50  0000 C CNN
F 1 "sol sel" V 6850 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6750 2000 60  0001 C CNN
F 3 "" H 6750 2000 60  0000 C CNN
	1    6750 2000
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR090
U 1 1 576D4FB5
P 6350 1900
F 0 "#PWR090" H 6350 1750 50  0001 C CNN
F 1 "+12V" H 6350 2040 50  0000 C CNN
F 2 "" H 6350 1900 60  0000 C CNN
F 3 "" H 6350 1900 60  0000 C CNN
	1    6350 1900
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR091
U 1 1 576D4FBB
P 6350 2100
F 0 "#PWR091" H 6350 1950 50  0001 C CNN
F 1 "+5V" H 6350 2240 50  0000 C CNN
F 2 "" H 6350 2100 60  0000 C CNN
F 3 "" H 6350 2100 60  0000 C CNN
	1    6350 2100
	0    -1   -1   0   
$EndComp
Connection ~ 6450 2000
Connection ~ 6450 2100
Wire Wire Line
	6350 1900 6550 1900
Wire Wire Line
	6350 2100 6550 2100
Wire Wire Line
	6550 2000 5700 2000
Wire Wire Line
	5700 2000 5700 3000
Connection ~ 5700 2450
$Comp
L Earth #PWR092
U 1 1 576D69D8
P 5700 3150
F 0 "#PWR092" H 5700 2900 50  0001 C CNN
F 1 "Earth" H 5700 3000 50  0001 C CNN
F 2 "" H 5700 3150 60  0000 C CNN
F 3 "" H 5700 3150 60  0000 C CNN
	1    5700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3100 5700 3150
$EndSCHEMATC
