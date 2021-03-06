EESchema Schematic File Version 2
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
LIBS:special
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
LIBS:freetronics_schematic
LIBS:max233
LIBS:pa3gyf-gpsdocxo-arduino-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L ARDUINO_SHIELD SHIELD1
U 1 1 580C8837
P 4150 4200
F 0 "SHIELD1" H 3700 5350 60  0000 C CNN
F 1 "ARDUINO_SHIELD" H 4200 3250 60  0000 C CNN
F 2 "freetronics_footprints:ARDUINO_SHIELD" H 4150 4000 50  0001 C CNN
F 3 "" H 4150 4200 60  0000 C CNN
	1    4150 4200
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P1
U 1 1 580CBA56
P 8850 5600
F 0 "P1" H 8850 5800 50  0000 C CNN
F 1 "CONN_FP_GPS" H 8850 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x03" H 8850 4400 60  0001 C CNN
F 3 "" H 8850 4400 60  0000 C CNN
	1    8850 5600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P3
U 1 1 580CBF0D
P 10650 4100
F 0 "P3" H 10650 4300 50  0000 C CNN
F 1 "CONN_GPS_RS232" H 10800 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x03" H 10650 2900 60  0001 C CNN
F 3 "" H 10650 2900 60  0000 C CNN
	1    10650 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P4
U 1 1 580CBFB6
P 10700 1700
F 0 "P4" H 10700 1900 50  0000 C CNN
F 1 "CONN_BP_RS232" H 10700 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x03" H 10700 500 60  0001 C CNN
F 3 "" H 10700 500 60  0000 C CNN
	1    10700 1700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 580D1134
P 1000 950
F 0 "#FLG01" H 1000 1045 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1130 50  0000 C CNN
F 2 "" H 1000 950 60  0000 C CNN
F 3 "" H 1000 950 60  0000 C CNN
	1    1000 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 580D1150
P 1000 1050
F 0 "#PWR02" H 1000 800 50  0001 C CNN
F 1 "GND" H 1000 900 50  0000 C CNN
F 2 "" H 1000 1050 60  0000 C CNN
F 3 "" H 1000 1050 60  0000 C CNN
	1    1000 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 580D571B
P 8500 5800
F 0 "#PWR03" H 8500 5550 50  0001 C CNN
F 1 "GND" H 8500 5650 50  0000 C CNN
F 2 "" H 8500 5800 60  0000 C CNN
F 3 "" H 8500 5800 60  0000 C CNN
	1    8500 5800
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 580D5773
P 9450 5100
F 0 "R17" V 9530 5100 50  0000 C CNN
F 1 "1k" V 9450 5100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 9380 5100 30  0001 C CNN
F 3 "" H 9450 5100 30  0000 C CNN
	1    9450 5100
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 580D5A0D
P 5250 4400
F 0 "R8" V 5200 4200 50  0000 C CNN
F 1 "270R" V 5250 4400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5180 4400 30  0001 C CNN
F 3 "" H 5250 4400 30  0000 C CNN
	1    5250 4400
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 580D5B14
P 5250 4300
F 0 "R7" V 5200 4100 50  0000 C CNN
F 1 "270R" V 5250 4300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5180 4300 30  0001 C CNN
F 3 "" H 5250 4300 30  0000 C CNN
	1    5250 4300
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 580D6BC1
P 9450 5700
F 0 "R18" V 9530 5700 50  0000 C CNN
F 1 "270R" V 9450 5700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 9380 5700 30  0001 C CNN
F 3 "" H 9450 5700 30  0000 C CNN
	1    9450 5700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 580D6C57
P 9700 6100
F 0 "#PWR04" H 9700 5850 50  0001 C CNN
F 1 "GND" H 9700 5950 50  0000 C CNN
F 2 "" H 9700 6100 60  0000 C CNN
F 3 "" H 9700 6100 60  0000 C CNN
	1    9700 6100
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 580D6CA1
P 10150 5900
F 0 "R19" V 10230 5900 50  0000 C CNN
F 1 "4k7" V 10150 5900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 10080 5900 30  0001 C CNN
F 3 "" H 10150 5900 30  0000 C CNN
	1    10150 5900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR05
U 1 1 580DE28F
P 3000 4000
F 0 "#PWR05" H 3000 3850 50  0001 C CNN
F 1 "+5V" H 3000 4140 50  0000 C CNN
F 2 "" H 3000 4000 60  0000 C CNN
F 3 "" H 3000 4000 60  0000 C CNN
	1    3000 4000
	1    0    0    -1  
$EndComp
$Comp
L MAX233_DIP U1
U 1 1 580D0991
P 9350 2300
F 0 "U1" H 8900 3150 50  0000 L CNN
F 1 "MAX233_DIP" H 9350 3150 50  0000 L CNN
F 2 "Housings_DIP:DIP-20__300_ELL" H 9350 2300 60  0001 C CNN
F 3 "" H 9350 2300 60  0000 C CNN
	1    9350 2300
	1    0    0    -1  
$EndComp
NoConn ~ 8750 2700
$Comp
L GND #PWR06
U 1 1 580D121F
P 9250 2950
F 0 "#PWR06" H 9250 2700 50  0001 C CNN
F 1 "GND" H 9250 2800 50  0000 C CNN
F 2 "" H 9250 2950 60  0000 C CNN
F 3 "" H 9250 2950 60  0000 C CNN
	1    9250 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 580D1253
P 9450 2950
F 0 "#PWR07" H 9450 2700 50  0001 C CNN
F 1 "GND" H 9450 2800 50  0000 C CNN
F 2 "" H 9450 2950 60  0000 C CNN
F 3 "" H 9450 2950 60  0000 C CNN
	1    9450 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 580D1CC5
P 11100 4100
F 0 "#PWR08" H 11100 3850 50  0001 C CNN
F 1 "GND" H 11100 3950 50  0000 C CNN
F 2 "" H 11100 4100 60  0000 C CNN
F 3 "" H 11100 4100 60  0000 C CNN
	1    11100 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 580D2498
P 11100 1700
F 0 "#PWR09" H 11100 1450 50  0001 C CNN
F 1 "GND" H 11100 1550 50  0000 C CNN
F 2 "" H 11100 1700 60  0000 C CNN
F 3 "" H 11100 1700 60  0000 C CNN
	1    11100 1700
	1    0    0    -1  
$EndComp
NoConn ~ 8750 1900
NoConn ~ 9950 1900
$Comp
L +5V #PWR010
U 1 1 580D30F2
P 9350 900
F 0 "#PWR010" H 9350 750 50  0001 C CNN
F 1 "+5V" H 9350 1040 50  0000 C CNN
F 2 "" H 9350 900 60  0000 C CNN
F 3 "" H 9350 900 60  0000 C CNN
	1    9350 900 
	1    0    0    -1  
$EndComp
Text GLabel 10400 3400 2    60   Input ~ 0
gps_tx
Text GLabel 10400 3550 2    60   Input ~ 0
gps_rx
Text GLabel 10400 1200 2    60   Input ~ 0
rs232_dce_txd
Text GLabel 10400 1050 2    60   Input ~ 0
rs232_dce_rxd
Text GLabel 10400 1350 2    60   Input ~ 0
rs232_dce_dcd
Text GLabel 10400 3700 2    60   Input ~ 0
gps_pps
$Comp
L C_Small C4
U 1 1 580D3B35
P 9750 1100
F 0 "C4" H 9760 1170 50  0000 L CNN
F 1 "1u" H 9850 1100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9750 1100 60  0001 C CNN
F 3 "" H 9750 1100 60  0000 C CNN
	1    9750 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 580D3BD9
P 9750 1200
F 0 "#PWR011" H 9750 950 50  0001 C CNN
F 1 "GND" H 9900 1100 50  0000 C CNN
F 2 "" H 9750 1200 60  0000 C CNN
F 3 "" H 9750 1200 60  0000 C CNN
	1    9750 1200
	1    0    0    -1  
$EndComp
Text GLabel 8000 1200 2    60   Input ~ 0
rs232_dte_txd_ttl
NoConn ~ 3200 3900
NoConn ~ 3200 3800
NoConn ~ 3200 3700
NoConn ~ 3200 3600
NoConn ~ 3200 4300
NoConn ~ 5100 3200
NoConn ~ 5100 3300
NoConn ~ 5100 3400
$Comp
L GND #PWR012
U 1 1 580D648C
P 3000 4200
F 0 "#PWR012" H 3000 3950 50  0001 C CNN
F 1 "GND" H 3000 4050 50  0000 C CNN
F 2 "" H 3000 4200 60  0000 C CNN
F 3 "" H 3000 4200 60  0000 C CNN
	1    3000 4200
	1    0    0    -1  
$EndComp
NoConn ~ 3200 4800
NoConn ~ 3200 4900
NoConn ~ 3200 5000
$Comp
L C_Small C3
U 1 1 580E920B
P 2800 4100
F 0 "C3" H 2800 4350 50  0000 L CNN
F 1 "1u" H 2800 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2800 4100 60  0001 C CNN
F 3 "" H 2800 4100 60  0000 C CNN
	1    2800 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 580E9335
P 2800 4200
F 0 "#PWR013" H 2800 3950 50  0001 C CNN
F 1 "GND" H 2800 4050 50  0000 C CNN
F 2 "" H 2800 4200 60  0000 C CNN
F 3 "" H 2800 4200 60  0000 C CNN
	1    2800 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 580E956B
P 2600 4200
F 0 "#PWR014" H 2600 3950 50  0001 C CNN
F 1 "GND" H 2600 4050 50  0000 C CNN
F 2 "" H 2600 4200 60  0000 C CNN
F 3 "" H 2600 4200 60  0000 C CNN
	1    2600 4200
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C2
U 1 1 580E9726
P 2600 4100
F 0 "C2" H 2550 4350 50  0000 L CNN
F 1 "22u" H 2550 4250 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x6.3mm_RM2.5" H 2600 4100 60  0001 C CNN
F 3 "" H 2600 4100 60  0000 C CNN
	1    2600 4100
	1    0    0    -1  
$EndComp
$Comp
L D D8
U 1 1 580EA0A3
P 9750 5100
F 0 "D8" H 9750 5200 50  0000 C CNN
F 1 "1N4148" H 9750 5300 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 9750 5100 60  0001 C CNN
F 3 "" H 9750 5100 60  0000 C CNN
	1    9750 5100
	1    0    0    1   
$EndComp
$Comp
L +5V #PWR015
U 1 1 580EB11B
P 9900 5100
F 0 "#PWR015" H 9900 4950 50  0001 C CNN
F 1 "+5V" H 9900 5240 50  0000 C CNN
F 2 "" H 9900 5100 60  0000 C CNN
F 3 "" H 9900 5100 60  0000 C CNN
	1    9900 5100
	1    0    0    -1  
$EndComp
NoConn ~ 5100 2700
NoConn ~ 5100 2800
NoConn ~ 5100 2900
NoConn ~ 4050 2700
NoConn ~ 4050 2800
NoConn ~ 4050 2900
NoConn ~ 5100 4900
NoConn ~ 5100 5000
$Comp
L BC547 Q2
U 1 1 580D6AF2
P 9800 5900
F 0 "Q2" H 10050 5900 50  0000 L CNN
F 1 "BC547" H 9500 5750 50  0000 L CNN
F 2 "Housings_TO-92:TO-92_Rugged" H 9500 5650 50  0001 L CIN
F 3 "" H 9800 5900 50  0000 L CNN
	1    9800 5900
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 5816308F
P 8500 5400
F 0 "#PWR016" H 8500 5250 50  0001 C CNN
F 1 "+5V" H 8500 5540 50  0000 C CNN
F 2 "" H 8500 5400 60  0000 C CNN
F 3 "" H 8500 5400 60  0000 C CNN
	1    8500 5400
	1    0    0    -1  
$EndComp
Text Notes 7900 750  0    60   Italic 0
RS-232 Interface
Text Notes 8400 6400 0    60   Italic 0
Front-Panel GPS Interface
Text Notes 8900 3450 0    60   Italic 0
GPS Interface
NoConn ~ 3200 4500
NoConn ~ 3200 4600
NoConn ~ 3200 4700
NoConn ~ 5100 3900
NoConn ~ 5100 3800
NoConn ~ 5100 3700
NoConn ~ 5100 3600
$Comp
L GND #PWR017
U 1 1 580F4D0B
P 5300 3500
F 0 "#PWR017" H 5300 3250 50  0001 C CNN
F 1 "GND" H 5300 3350 50  0000 C CNN
F 2 "" H 5300 3500 60  0000 C CNN
F 3 "" H 5300 3500 60  0000 C CNN
	1    5300 3500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 580F7887
P 10100 5200
F 0 "C5" H 10100 5450 50  0000 L CNN
F 1 "1u" H 10100 5350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10100 5200 60  0001 C CNN
F 3 "" H 10100 5200 60  0000 C CNN
	1    10100 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 580F8091
P 10100 5300
F 0 "#PWR018" H 10100 5050 50  0001 C CNN
F 1 "GND" H 10100 5150 50  0000 C CNN
F 2 "" H 10100 5300 60  0000 C CNN
F 3 "" H 10100 5300 60  0000 C CNN
	1    10100 5300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 580F84C5
P 8250 5600
F 0 "C1" H 8250 5850 50  0000 L CNN
F 1 "1u" H 8250 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8250 5600 60  0001 C CNN
F 3 "" H 8250 5600 60  0000 C CNN
	1    8250 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 580F85D1
P 8250 5700
F 0 "#PWR019" H 8250 5450 50  0001 C CNN
F 1 "GND" H 8250 5550 50  0000 C CNN
F 2 "" H 8250 5700 60  0000 C CNN
F 3 "" H 8250 5700 60  0000 C CNN
	1    8250 5700
	1    0    0    -1  
$EndComp
Text Notes 5600 3900 0    31   ~ 0
AltSoftSerial:\npin 8: receive\npin 9: transmit\npin 10: PWM/timer unusable
NoConn ~ 5100 4700
NoConn ~ 5100 4600
$Comp
L D D1
U 1 1 5810D276
P 9450 3650
F 0 "D1" H 9550 3700 50  0000 C CNN
F 1 "1N4148" H 9650 3600 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 9450 3650 60  0001 C CNN
F 3 "" H 9450 3650 60  0000 C CNN
	1    9450 3650
	-1   0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 5810D32D
P 9450 3850
F 0 "D2" H 9550 3900 50  0000 C CNN
F 1 "1N4148" H 9650 3800 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 9450 3850 60  0001 C CNN
F 3 "" H 9450 3850 60  0000 C CNN
	1    9450 3850
	-1   0    0    -1  
$EndComp
NoConn ~ 5100 4500
$Comp
L R R1
U 1 1 5811B2A5
P 9750 3650
F 0 "R1" V 9830 3650 50  0000 C CNN
F 1 "4k7" V 9750 3650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 9680 3650 30  0001 C CNN
F 3 "" H 9750 3650 30  0000 C CNN
	1    9750 3650
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR020
U 1 1 5811B3D3
P 9900 3650
F 0 "#PWR020" H 9900 3500 50  0001 C CNN
F 1 "+5V" H 9900 3790 50  0000 C CNN
F 2 "" H 9900 3650 60  0000 C CNN
F 3 "" H 9900 3650 60  0000 C CNN
	1    9900 3650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 5811D44D
P 9900 3750
F 0 "C6" H 9950 3800 50  0000 L CNN
F 1 "1u" H 9950 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9900 3750 60  0001 C CNN
F 3 "" H 9900 3750 60  0000 C CNN
	1    9900 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5811DA8E
P 9900 3850
F 0 "#PWR021" H 9900 3600 50  0001 C CNN
F 1 "GND" H 9900 3700 50  0000 C CNN
F 2 "" H 9900 3850 60  0000 C CNN
F 3 "" H 9900 3850 60  0000 C CNN
	1    9900 3850
	1    0    0    -1  
$EndComp
Text GLabel 8525 4875 2    60   Input ~ 0
fix_red
Text GLabel 9050 5000 0    60   Input ~ 0
fix_green
Text GLabel 9100 6075 0    60   Input ~ 0
pps_green
Wire Wire Line
	1000 950  1000 1050
Wire Wire Line
	9100 5500 9100 5100
Wire Wire Line
	9100 5100 9300 5100
Wire Wire Line
	2600 4000 3200 4000
Wire Wire Line
	9950 2400 9950 2500
Wire Wire Line
	9950 2100 9950 2200
Wire Wire Line
	8750 2400 8750 2500
Wire Wire Line
	10900 4000 10900 4200
Connection ~ 10900 4100
Wire Wire Line
	10950 1600 10950 1800
Connection ~ 10950 1700
Wire Wire Line
	10950 1700 11100 1700
Wire Wire Line
	9950 1600 10450 1600
Wire Wire Line
	9950 1800 10200 1800
Wire Wire Line
	9950 1700 10300 1700
Wire Wire Line
	10300 1350 10300 1800
Wire Wire Line
	10900 4100 11100 4100
Wire Wire Line
	9350 900  9350 1350
Wire Wire Line
	9350 1000 9750 1000
Connection ~ 9350 1000
Wire Wire Line
	8650 4000 8650 1600
Wire Wire Line
	8650 1600 8750 1600
Wire Wire Line
	10400 3400 10100 3400
Wire Wire Line
	10100 3400 10100 4000
Connection ~ 10100 4000
Connection ~ 8650 4000
Wire Wire Line
	10400 3550 10200 3550
Wire Wire Line
	10200 3550 10200 4100
Connection ~ 10200 4100
Wire Wire Line
	8550 4200 10400 4200
Wire Wire Line
	8550 4200 8550 1700
Wire Wire Line
	8550 1700 8750 1700
Wire Wire Line
	10400 3700 10300 3700
Wire Wire Line
	10300 3700 10300 5900
Connection ~ 10300 4200
Wire Wire Line
	8750 1800 7900 1800
Wire Wire Line
	8000 1200 7900 1200
Connection ~ 7900 1800
Wire Wire Line
	3200 4100 3200 4200
Connection ~ 3000 4000
Connection ~ 2800 4000
Wire Wire Line
	5400 4300 9200 4300
Wire Wire Line
	9200 4300 9200 5600
Wire Wire Line
	9200 5600 9100 5600
Wire Wire Line
	5400 4400 8400 4400
Wire Wire Line
	8400 4400 8400 5600
Wire Wire Line
	5100 4800 9600 4800
Wire Wire Line
	9600 4800 9600 5100
Wire Wire Line
	10400 1050 10100 1050
Wire Wire Line
	10100 1050 10100 1600
Connection ~ 10100 1600
Wire Wire Line
	10400 1200 10200 1200
Wire Wire Line
	10200 1200 10200 1900
Connection ~ 10200 1800
Wire Wire Line
	10300 1350 10400 1350
Wire Wire Line
	10300 1800 10450 1800
Connection ~ 10300 1700
Wire Wire Line
	10450 1700 10400 1700
Wire Wire Line
	10400 1700 10400 1900
Wire Wire Line
	10400 1900 10200 1900
Wire Wire Line
	9100 5700 9300 5700
Wire Wire Line
	9600 5700 9700 5700
Wire Wire Line
	3000 4200 3000 4100
Wire Wire Line
	3000 4100 3200 4100
Wire Notes Line
	7800 600  7800 3200
Wire Notes Line
	7800 3200 11200 3200
Wire Notes Line
	11200 3200 11200 600 
Wire Notes Line
	11200 600  7800 600 
Wire Wire Line
	8500 5400 8500 5500
Wire Wire Line
	8250 5500 8600 5500
Wire Wire Line
	8600 5700 8500 5700
Wire Wire Line
	8500 5700 8500 5800
Wire Notes Line
	8150 4700 11150 4700
Wire Notes Line
	11150 4700 11150 6450
Wire Notes Line
	11150 6450 8150 6450
Wire Notes Line
	8150 6450 8150 4700
Wire Notes Line
	8400 3300 11200 3300
Wire Notes Line
	11200 3300 11200 4300
Wire Notes Line
	11200 4300 9350 4300
Wire Notes Line
	9350 4300 9350 4250
Wire Notes Line
	9350 4250 8400 4250
Wire Notes Line
	8400 4250 8400 3300
Wire Wire Line
	5100 3500 5300 3500
Wire Wire Line
	9900 5100 10100 5100
Wire Wire Line
	8400 5600 8600 5600
Connection ~ 8500 5500
Wire Wire Line
	7800 4100 7800 4000
Wire Wire Line
	5100 4100 7800 4100
Wire Wire Line
	5100 4000 7300 4000
Wire Notes Line
	5550 3700 6350 3700
Wire Notes Line
	6350 3700 6350 3900
Wire Notes Line
	6350 3900 5550 3900
Wire Notes Line
	5550 3900 5550 3700
Wire Wire Line
	7800 4000 10400 4000
Wire Wire Line
	9600 3650 9600 3850
Wire Wire Line
	7900 1200 7900 3650
Wire Wire Line
	7900 3650 9300 3650
Wire Wire Line
	9600 3850 9700 3850
Wire Wire Line
	9700 3850 9700 4100
Wire Wire Line
	7300 4000 7300 3850
Wire Wire Line
	7300 3850 9300 3850
Wire Wire Line
	9700 4100 10400 4100
Connection ~ 9600 3650
Connection ~ 9600 3850
Connection ~ 10900 4000
Connection ~ 10900 4200
Connection ~ 10400 4200
Connection ~ 10400 4100
Connection ~ 10400 4000
Connection ~ 9900 3850
Connection ~ 9900 3650
Wire Wire Line
	8525 4875 8400 4875
Connection ~ 8400 4875
Wire Wire Line
	9050 5000 9200 5000
Connection ~ 9200 5000
Wire Wire Line
	9100 6075 9200 6075
Wire Wire Line
	9200 6075 9200 5700
Connection ~ 9200 5700
$EndSCHEMATC
