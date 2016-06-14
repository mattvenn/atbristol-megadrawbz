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
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2850 2850 0    60   Input ~ 0
gondola-charge
$Comp
L BS170 Q3
U 1 1 576130B7
P 3450 2800
F 0 "Q3" H 3650 2875 50  0000 L CNN
F 1 "BS170" H 3650 2800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3650 2725 50  0001 L CIN
F 3 "" H 3450 2800 50  0000 L CNN
	1    3450 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5761312D
P 4350 2450
F 0 "P1" H 4350 2600 50  0000 C CNN
F 1 "gondola charge" V 4450 2450 50  0000 C CNN
F 2 "Connect:AK300-2" H 4350 2450 60  0001 C CNN
F 3 "" H 4350 2450 60  0000 C CNN
	1    4350 2450
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR065
U 1 1 57613560
P 3550 3300
F 0 "#PWR065" H 3550 3050 50  0001 C CNN
F 1 "Earth" H 3550 3150 50  0001 C CNN
F 2 "" H 3550 3300 60  0000 C CNN
F 3 "" H 3550 3300 60  0000 C CNN
	1    3550 3300
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 57613596
P 3050 3100
F 0 "R22" V 3130 3100 50  0000 C CNN
F 1 "R" V 3050 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2980 3100 30  0001 C CNN
F 3 "" H 3050 3100 30  0000 C CNN
	1    3050 3100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR066
U 1 1 575FEA24
P 4150 2400
F 0 "#PWR066" H 4150 2250 50  0001 C CNN
F 1 "+5V" H 4150 2540 50  0000 C CNN
F 2 "" H 4150 2400 60  0000 C CNN
F 3 "" H 4150 2400 60  0000 C CNN
	1    4150 2400
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 575FEF1F
P 3900 2050
F 0 "D4" H 3900 2150 50  0000 C CNN
F 1 "LED" H 3900 1950 50  0000 C CNN
F 2 "LEDs:LED-1206" H 3900 2050 60  0001 C CNN
F 3 "" H 3900 2050 60  0000 C CNN
	1    3900 2050
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 575FEF26
P 3900 1700
F 0 "R1" V 3980 1700 50  0000 C CNN
F 1 "R" V 3900 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3830 1700 30  0001 C CNN
F 3 "" H 3900 1700 30  0000 C CNN
	1    3900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2850 3250 2850
Wire Wire Line
	3050 2950 3050 2850
Connection ~ 3050 2850
Wire Wire Line
	3550 3000 3550 3300
Wire Wire Line
	3050 3250 3550 3250
Connection ~ 3550 3250
Wire Wire Line
	4150 2500 3550 2500
Wire Wire Line
	3550 2500 3550 2600
Wire Wire Line
	3900 2250 3900 2500
Connection ~ 3900 2500
$Comp
L +5V #PWR067
U 1 1 575FF06F
P 3900 1550
F 0 "#PWR067" H 3900 1400 50  0001 C CNN
F 1 "+5V" H 3900 1690 50  0000 C CNN
F 2 "" H 3900 1550 60  0000 C CNN
F 3 "" H 3900 1550 60  0000 C CNN
	1    3900 1550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
