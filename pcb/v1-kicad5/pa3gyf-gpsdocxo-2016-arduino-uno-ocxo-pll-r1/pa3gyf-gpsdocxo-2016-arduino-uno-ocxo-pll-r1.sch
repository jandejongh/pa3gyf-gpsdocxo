EESchema Schematic File Version 4
EELAYER 30 0
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
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:ARDUINO_SHIELD SHIELD1
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
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:CONN_02X05 P2
U 1 1 580CBCD7
P 6650 3900
F 0 "P2" H 6650 4200 50  0000 C CNN
F 1 "CONN_FP_OCXO" H 6650 4300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 6650 2700 60  0001 C CNN
F 3 "" H 6650 2700 60  0000 C CNN
	1    6650 3900
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:CONN_02X02 P5
U 1 1 580CC5FE
P 1050 4550
F 0 "P5" H 1050 4700 50  0000 C CNN
F 1 "CONN_OCXO_POWER" H 1050 4800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x02" H 1050 3350 60  0001 C CNN
F 3 "" H 1050 3350 60  0000 C CNN
	1    1050 4550
	-1   0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:CONN_01X02 P6
U 1 1 580CC63F
P 7050 1300
F 0 "P6" H 7050 1450 50  0000 C CNN
F 1 "CONN_OCXO_TUNE_SELECT" V 7200 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 7050 1300 60  0001 C CNN
F 3 "" H 7050 1300 60  0000 C CNN
	1    7050 1300
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:CONN_01X02 P7
U 1 1 580CC6C8
P 900 6850
F 0 "P7" H 900 7000 50  0000 C CNN
F 1 "CONN_PLL_SENSE" V 1050 6850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 900 6850 60  0001 C CNN
F 3 "" H 900 6850 60  0000 C CNN
	1    900  6850
	-1   0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR01
U 1 1 580CCF17
P 1100 7000
F 0 "#PWR01" H 1100 6750 50  0001 C CNN
F 1 "GND" H 1100 6850 50  0000 C CNN
F 2 "" H 1100 7000 60  0000 C CNN
F 3 "" H 1100 7000 60  0000 C CNN
	1    1100 7000
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:PWR_FLAG #FLG02
U 1 1 580D1134
P 1000 950
F 0 "#FLG02" H 1000 1045 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1130 50  0000 C CNN
F 2 "" H 1000 950 60  0000 C CNN
F 3 "" H 1000 950 60  0000 C CNN
	1    1000 950 
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR03
U 1 1 580D1150
P 1000 1050
F 0 "#PWR03" H 1000 800 50  0001 C CNN
F 1 "GND" H 1000 900 50  0000 C CNN
F 2 "" H 1000 1050 60  0000 C CNN
F 3 "" H 1000 1050 60  0000 C CNN
	1    1000 1050
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:+5V #PWR04
U 1 1 580DE28F
P 3000 4000
F 0 "#PWR04" H 3000 3850 50  0001 C CNN
F 1 "+5V" H 3000 4140 50  0000 C CNN
F 2 "" H 3000 4000 60  0000 C CNN
F 3 "" H 3000 4000 60  0000 C CNN
	1    3000 4000
	1    0    0    -1  
$EndComp
NoConn ~ 3200 3900
NoConn ~ 3200 3800
NoConn ~ 3200 3700
NoConn ~ 3200 3600
NoConn ~ 3200 4300
NoConn ~ 5100 3200
NoConn ~ 5100 3300
NoConn ~ 5100 3400
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R_Small R2
U 1 1 580EB134
P 1400 4500
F 0 "R2" V 1300 4450 50  0000 L CNN
F 1 "10k" V 1400 4450 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 1400 4500 60  0001 C CNN
F 3 "" H 1400 4500 60  0000 C CNN
	1    1400 4500
	0    1    1    0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R_Small R3
U 1 1 580EB1EB
P 1400 4600
F 0 "R3" V 1500 4550 50  0000 L CNN
F 1 "10k" V 1400 4550 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 1400 4600 60  0001 C CNN
F 3 "" H 1400 4600 60  0000 C CNN
	1    1400 4600
	0    1    1    0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R_Small R4
U 1 1 580EB251
P 1700 4850
F 0 "R4" H 1700 5050 50  0000 L CNN
F 1 "2k2" H 1700 4950 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 1700 4850 60  0001 C CNN
F 3 "" H 1700 4850 60  0000 C CNN
	1    1700 4850
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R_Small R6
U 1 1 580EB2FB
P 2100 4850
F 0 "R6" H 2100 5050 50  0000 L CNN
F 1 "2k2" H 2100 4950 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 2100 4850 60  0001 C CNN
F 3 "" H 2100 4850 60  0000 C CNN
	1    2100 4850
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR05
U 1 1 580EB6E9
P 1700 5000
F 0 "#PWR05" H 1700 4750 50  0001 C CNN
F 1 "GND" H 1700 4850 50  0000 C CNN
F 2 "" H 1700 5000 60  0000 C CNN
F 3 "" H 1700 5000 60  0000 C CNN
	1    1700 5000
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:D D6
U 1 1 580D35E6
P 2300 4850
F 0 "D6" V 2100 4850 50  0000 C CNN
F 1 "1N4148" H 2300 4750 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 2300 4850 60  0001 C CNN
F 3 "" H 2300 4850 60  0000 C CNN
	1    2300 4850
	0    -1   -1   0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:D D2
U 1 1 580D36DC
P 1900 4850
F 0 "D2" H 1900 4950 50  0000 C CNN
F 1 "1N4148" H 1900 4750 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 1900 4850 60  0001 C CNN
F 3 "" H 1900 4850 60  0000 C CNN
	1    1900 4850
	0    -1   -1   0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:D D1
U 1 1 580D4544
P 1900 4250
F 0 "D1" H 1900 4350 50  0000 C CNN
F 1 "1N4148" H 2150 4350 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 1900 4250 60  0001 C CNN
F 3 "" H 1900 4250 60  0000 C CNN
	1    1900 4250
	0    -1   -1   0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:D D5
U 1 1 580D45CC
P 2300 4250
F 0 "D5" H 2300 4350 50  0000 C CNN
F 1 "1N4148" H 2250 4450 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 2300 4250 60  0001 C CNN
F 3 "" H 2300 4250 60  0000 C CNN
	1    2300 4250
	0    -1   -1   0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:+5V #PWR06
U 1 1 580D4BEA
P 2100 4100
F 0 "#PWR06" H 2100 3950 50  0001 C CNN
F 1 "+5V" H 2100 4240 50  0000 C CNN
F 2 "" H 2100 4100 60  0000 C CNN
F 3 "" H 2100 4100 60  0000 C CNN
	1    2100 4100
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR07
U 1 1 580D58CA
P 700 4600
F 0 "#PWR07" H 700 4350 50  0001 C CNN
F 1 "GND" H 700 4450 50  0000 C CNN
F 2 "" H 700 4600 60  0000 C CNN
F 3 "" H 700 4600 60  0000 C CNN
	1    700  4600
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR08
U 1 1 580D648C
P 3000 4200
F 0 "#PWR08" H 3000 3950 50  0001 C CNN
F 1 "GND" H 3000 4050 50  0000 C CNN
F 2 "" H 3000 4200 60  0000 C CNN
F 3 "" H 3000 4200 60  0000 C CNN
	1    3000 4200
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR09
U 1 1 580D7F97
P 2100 5000
F 0 "#PWR09" H 2100 4750 50  0001 C CNN
F 1 "GND" H 2100 4850 50  0000 C CNN
F 2 "" H 2100 5000 60  0000 C CNN
F 3 "" H 2100 5000 60  0000 C CNN
	1    2100 5000
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R_Small R5
U 1 1 580DD11C
P 1700 6950
F 0 "R5" H 1550 7000 50  0000 L CNN
F 1 "10k" V 1600 6800 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 1700 6950 60  0001 C CNN
F 3 "" H 1700 6950 60  0000 C CNN
	1    1700 6950
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:D D4
U 1 1 580DD1BA
P 1900 6950
F 0 "D4" V 1650 6950 50  0000 C CNN
F 1 "1N4148" H 1900 6850 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 1900 6950 60  0001 C CNN
F 3 "" H 1900 6950 60  0000 C CNN
	1    1900 6950
	0    -1   -1   0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:D D3
U 1 1 580DF137
P 1900 6650
F 0 "D3" H 1900 6750 50  0000 C CNN
F 1 "1N4148" H 1950 6550 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 1900 6650 60  0001 C CNN
F 3 "" H 1900 6650 60  0000 C CNN
	1    1900 6650
	0    -1   -1   0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:+5V #PWR010
U 1 1 580DF20B
P 1900 6500
F 0 "#PWR010" H 1900 6350 50  0001 C CNN
F 1 "+5V" H 1900 6640 50  0000 C CNN
F 2 "" H 1900 6500 60  0000 C CNN
F 3 "" H 1900 6500 60  0000 C CNN
	1    1900 6500
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR011
U 1 1 580DF2E4
P 1700 7100
F 0 "#PWR011" H 1700 6850 50  0001 C CNN
F 1 "GND" H 1700 6950 50  0000 C CNN
F 2 "" H 1700 7100 60  0000 C CNN
F 3 "" H 1700 7100 60  0000 C CNN
	1    1700 7100
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R_Small R1
U 1 1 580E1699
P 1400 6800
F 0 "R1" V 1500 6750 50  0000 L CNN
F 1 "1k" V 1300 6750 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 1400 6800 60  0001 C CNN
F 3 "" H 1400 6800 60  0000 C CNN
	1    1400 6800
	0    1    1    0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:BC547 Q1
U 1 1 580E5847
P 5800 1450
F 0 "Q1" H 5500 1800 50  0000 L CNN
F 1 "BC547" H 5500 1700 50  0000 L CNN
F 2 "Housings_TO-92:TO-92_Rugged" H 5500 1600 50  0001 L CIN
F 3 "" H 5800 1450 50  0000 L CNN
	1    5800 1450
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R R16
U 1 1 580E584D
P 6600 1250
F 0 "R16" V 6680 1250 50  0000 C CNN
F 1 "10R" V 6600 1250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 6530 1250 30  0001 C CNN
F 3 "" H 6600 1250 30  0000 C CNN
	1    6600 1250
	0    1    1    0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R R9
U 1 1 580E5859
P 5600 1800
F 0 "R9" V 5680 1800 50  0000 C CNN
F 1 "10k" V 5600 1800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5530 1800 30  0001 C CNN
F 3 "" H 5600 1800 30  0000 C CNN
	1    5600 1800
	-1   0    0    1   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:D D7
U 1 1 580E5B5D
P 6350 1400
F 0 "D7" H 6350 1500 50  0000 C CNN
F 1 "1N4148" H 6300 1300 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 6350 1400 60  0001 C CNN
F 3 "" H 6350 1400 60  0000 C CNN
	1    6350 1400
	0    -1   -1   0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR012
U 1 1 580E6201
P 5900 1650
F 0 "#PWR012" H 5900 1400 50  0001 C CNN
F 1 "GND" H 5900 1500 50  0000 C CNN
F 2 "" H 5900 1650 60  0000 C CNN
F 3 "" H 5900 1650 60  0000 C CNN
	1    5900 1650
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR013
U 1 1 580E75C6
P 5400 3300
F 0 "#PWR013" H 5400 3050 50  0001 C CNN
F 1 "GND" H 5400 3150 50  0000 C CNN
F 2 "" H 5400 3300 60  0000 C CNN
F 3 "" H 5400 3300 60  0000 C CNN
	1    5400 3300
	1    0    0    -1  
$EndComp
NoConn ~ 3200 4800
NoConn ~ 3200 4900
NoConn ~ 3200 5000
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:C_Small C3
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
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR014
U 1 1 580E9335
P 2800 4200
F 0 "#PWR014" H 2800 3950 50  0001 C CNN
F 1 "GND" H 2800 4050 50  0000 C CNN
F 2 "" H 2800 4200 60  0000 C CNN
F 3 "" H 2800 4200 60  0000 C CNN
	1    2800 4200
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR015
U 1 1 580E956B
P 2600 4200
F 0 "#PWR015" H 2600 3950 50  0001 C CNN
F 1 "GND" H 2600 4050 50  0000 C CNN
F 2 "" H 2600 4200 60  0000 C CNN
F 3 "" H 2600 4200 60  0000 C CNN
	1    2600 4200
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:CP_Small C2
U 1 1 580E9726
P 2600 4100
F 0 "C2" H 2550 4350 50  0000 L CNN
F 1 "22u" H 2550 4250 50  0000 L CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x6.3mm_RM2.5" H 2600 4100 60  0001 C CNN
F 3 "" H 2600 4100 60  0000 C CNN
	1    2600 4100
	1    0    0    -1  
$EndComp
NoConn ~ 5100 2700
NoConn ~ 5100 2800
NoConn ~ 5100 2900
NoConn ~ 4050 2700
NoConn ~ 4050 2800
NoConn ~ 4050 2900
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:C_Small C1
U 1 1 580F223E
P 2150 6900
F 0 "C1" H 2250 6900 50  0000 L CNN
F 1 "1u" H 2200 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2150 6900 60  0001 C CNN
F 3 "" H 2150 6900 60  0000 C CNN
	1    2150 6900
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:+5V #PWR016
U 1 1 5810062B
P 7050 3800
F 0 "#PWR016" H 7050 3650 50  0001 C CNN
F 1 "+5V" H 7050 3940 50  0000 C CNN
F 2 "" H 7050 3800 60  0000 C CNN
F 3 "" H 7050 3800 60  0000 C CNN
	1    7050 3800
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR017
U 1 1 581006F9
P 7050 4000
F 0 "#PWR017" H 7050 3750 50  0001 C CNN
F 1 "GND" H 7050 3850 50  0000 C CNN
F 2 "" H 7050 4000 60  0000 C CNN
F 3 "" H 7050 4000 60  0000 C CNN
	1    7050 4000
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R R15
U 1 1 581018E6
P 5650 4100
F 0 "R15" V 5700 4300 50  0000 C CNN
F 1 "270R" V 5650 4100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5580 4100 30  0001 C CNN
F 3 "" H 5650 4100 30  0000 C CNN
	1    5650 4100
	0    1    1    0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R R14
U 1 1 581019E4
P 5650 4000
F 0 "R14" V 5700 4200 50  0000 C CNN
F 1 "270R" V 5650 4000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5580 4000 30  0001 C CNN
F 3 "" H 5650 4000 30  0000 C CNN
	1    5650 4000
	0    1    1    0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R R13
U 1 1 58101A70
P 5650 3900
F 0 "R13" V 5700 4100 50  0000 C CNN
F 1 "270R" V 5650 3900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5580 3900 30  0001 C CNN
F 3 "" H 5650 3900 30  0000 C CNN
	1    5650 3900
	0    1    1    0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R R12
U 1 1 58101B78
P 5650 3800
F 0 "R12" V 5700 4000 50  0000 C CNN
F 1 "270R" V 5650 3800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5580 3800 30  0001 C CNN
F 3 "" H 5650 3800 30  0000 C CNN
	1    5650 3800
	0    1    1    0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R R11
U 1 1 58101C06
P 5650 3700
F 0 "R11" V 5700 3900 50  0000 C CNN
F 1 "270R" V 5650 3700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5580 3700 30  0001 C CNN
F 3 "" H 5650 3700 30  0000 C CNN
	1    5650 3700
	0    1    1    0   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:R R10
U 1 1 58101C93
P 5650 3600
F 0 "R10" V 5700 3800 50  0000 C CNN
F 1 "10k" V 5650 3600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5580 3600 30  0001 C CNN
F 3 "" H 5650 3600 30  0000 C CNN
	1    5650 3600
	0    1    1    0   
$EndComp
Text GLabel 7250 3900 2    60   Input ~ 0
tune_sel
NoConn ~ 5100 4900
NoConn ~ 5100 5000
Text GLabel 6950 2750 2    60   Output ~ 0
heater_red
Text GLabel 6950 2900 2    60   Output ~ 0
heater_green
Text GLabel 6950 3050 2    60   Output ~ 0
locked_red
Text GLabel 6950 3200 2    60   Output ~ 0
locked_green
Text GLabel 6950 3350 2    60   Output ~ 0
tune_man
Text GLabel 6950 950  2    60   Output ~ 0
tune_pll
Text Notes 5450 750  0    60   Italic 0
OCXO Tune Select Relay Driver
Text Notes 6650 1200 0    60   ~ 0
*
Text Notes 700  7550 0    60   Italic 0
PLL Lock Detection Interface
Text Notes 5700 2600 0    60   Italic 0
Front-Panel OCXO Interface
Text Notes 700  3750 0    60   Italic 0
OCXO Interface
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:C_Small C6
U 1 1 581E59FE
P 1700 4400
F 0 "C6" H 1550 4300 50  0000 L CNN
F 1 "1u" H 1550 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1700 4400 60  0001 C CNN
F 3 "" H 1700 4400 60  0000 C CNN
	1    1700 4400
	1    0    0    1   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:C_Small C5
U 1 1 581E5AE5
P 1550 5000
F 0 "C5" H 1650 5050 50  0000 L CNN
F 1 "1u" H 1650 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1550 5000 60  0001 C CNN
F 3 "" H 1550 5000 60  0000 C CNN
	1    1550 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1000 950  1000 1050
Wire Wire Line
	2600 4000 2800 4000
Wire Wire Line
	1500 4500 1700 4500
Wire Wire Line
	1700 4500 1700 4750
Connection ~ 1700 4500
Wire Wire Line
	2100 4600 2100 4750
Connection ~ 2100 4600
Wire Wire Line
	1700 4950 1700 5000
Wire Wire Line
	1700 5000 1900 5000
Wire Wire Line
	2100 4950 2100 5000
Wire Wire Line
	2300 5000 2100 5000
Connection ~ 2100 5000
Wire Wire Line
	1900 4400 1900 4500
Connection ~ 1900 4500
Wire Wire Line
	2300 4400 2300 4600
Connection ~ 2300 4600
Wire Wire Line
	1900 4100 2100 4100
Connection ~ 2100 4100
Wire Wire Line
	800  4600 700  4600
Wire Wire Line
	800  4500 700  4500
Wire Wire Line
	700  4500 700  4600
Connection ~ 700  4600
Wire Wire Line
	3200 4100 3200 4200
Connection ~ 1700 5000
Wire Wire Line
	1700 7100 1900 7100
Wire Wire Line
	2500 6800 2500 4700
Wire Wire Line
	2500 4700 3200 4700
Connection ~ 1900 6800
Connection ~ 1700 6800
Wire Wire Line
	1500 6800 1700 6800
Wire Wire Line
	5900 1250 6350 1250
Connection ~ 6350 1250
Connection ~ 3000 4000
Connection ~ 2800 4000
Wire Wire Line
	2150 7100 2150 7000
Connection ~ 1900 7100
Connection ~ 2150 6800
Wire Wire Line
	6900 3800 6900 3700
Wire Wire Line
	6900 4000 6900 4100
Wire Wire Line
	6900 4000 7050 4000
Wire Wire Line
	6900 3900 7150 3900
Wire Wire Line
	1500 4600 1550 4600
Wire Wire Line
	5100 3500 5200 3500
Wire Wire Line
	5200 3500 5200 3300
Wire Wire Line
	5200 3300 5400 3300
Wire Wire Line
	5800 3700 6300 3700
Wire Wire Line
	5800 3800 6200 3800
Wire Wire Line
	5800 3900 6100 3900
Wire Wire Line
	5800 4000 6000 4000
Wire Wire Line
	5800 4100 5900 4100
Wire Wire Line
	6900 3800 7050 3800
Wire Wire Line
	6950 2750 6300 2750
Wire Wire Line
	6300 2750 6300 3700
Wire Wire Line
	6950 2900 6200 2900
Wire Wire Line
	6200 2900 6200 3800
Wire Wire Line
	6950 3050 6100 3050
Wire Wire Line
	6100 3050 6100 3900
Wire Wire Line
	6950 3200 6000 3200
Wire Wire Line
	6000 3200 6000 4000
Wire Wire Line
	6950 3350 5900 3350
Wire Wire Line
	5900 3350 5900 4100
Wire Wire Line
	6850 1250 6850 950 
Wire Wire Line
	6850 950  6950 950 
Wire Notes Line
	5350 600  7700 600 
Wire Notes Line
	7700 600  7700 2300
Wire Notes Line
	7700 2300 5350 2300
Wire Notes Line
	5350 2300 5350 600 
Wire Wire Line
	6350 1550 6350 1650
Wire Wire Line
	5900 1650 6350 1650
Wire Wire Line
	6850 1650 6850 1350
Connection ~ 6350 1650
Wire Wire Line
	5600 1450 5600 1650
Wire Wire Line
	6750 1250 6850 1250
Connection ~ 6850 1250
Wire Wire Line
	5600 1950 5600 3450
Wire Wire Line
	7150 3450 7150 3900
Wire Wire Line
	5600 3450 5800 3450
Connection ~ 7150 3900
Wire Wire Line
	1100 6800 1300 6800
Wire Wire Line
	1100 6900 1100 7000
Wire Wire Line
	1700 6800 1700 6850
Wire Wire Line
	1700 7050 1700 7100
Wire Notes Line
	600  7650 2950 7650
Wire Notes Line
	2950 7650 2950 5850
Wire Notes Line
	2950 5850 600  5850
Wire Notes Line
	600  5850 600  7650
Wire Wire Line
	3000 4200 3000 4100
Wire Wire Line
	3000 4100 3200 4100
Wire Notes Line
	2450 5300 2450 3600
Wire Notes Line
	2450 3600 600  3600
Wire Notes Line
	600  3600 600  5300
Wire Notes Line
	600  5300 2450 5300
Connection ~ 6300 3700
Connection ~ 6200 3800
Connection ~ 6100 3900
Connection ~ 6000 4000
Connection ~ 5900 4100
Wire Wire Line
	5100 3700 5500 3700
Wire Wire Line
	5100 3800 5500 3800
Wire Wire Line
	5100 3600 5500 3600
Wire Wire Line
	5800 3600 5800 3450
Connection ~ 5800 3450
Wire Notes Line
	5450 2500 7700 2500
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR018
U 1 1 581E857C
P 1700 4300
F 0 "#PWR018" H 1700 4050 50  0001 C CNN
F 1 "GND" H 1700 4150 50  0000 C CNN
F 2 "" H 1700 4300 60  0000 C CNN
F 3 "" H 1700 4300 60  0000 C CNN
	1    1700 4300
	1    0    0    1   
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR019
U 1 1 581E860B
P 1550 5100
F 0 "#PWR019" H 1550 4850 50  0001 C CNN
F 1 "GND" H 1550 4950 50  0000 C CNN
F 2 "" H 1550 5100 60  0000 C CNN
F 3 "" H 1550 5100 60  0000 C CNN
	1    1550 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 4900 1550 4600
Connection ~ 1550 4600
NoConn ~ 5100 4800
NoConn ~ 5100 4400
NoConn ~ 5100 4300
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:C_Small C4
U 1 1 5811AC1F
P 7550 3600
F 0 "C4" H 7550 3850 50  0000 L CNN
F 1 "1u" H 7550 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7550 3600 60  0001 C CNN
F 3 "" H 7550 3600 60  0000 C CNN
	1    7550 3600
	1    0    0    -1  
$EndComp
$Comp
L pa3gyf-gpsdocxo-2016-arduino-uno-ocxo-pll-r1-cache-saved:GND #PWR020
U 1 1 5811AC25
P 7550 3700
F 0 "#PWR020" H 7550 3450 50  0001 C CNN
F 1 "GND" H 7550 3550 50  0000 C CNN
F 2 "" H 7550 3700 60  0000 C CNN
F 3 "" H 7550 3700 60  0000 C CNN
	1    7550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3800 7300 3500
Wire Wire Line
	7300 3500 7550 3500
Connection ~ 7050 3800
Wire Wire Line
	5500 4100 5400 4100
Wire Wire Line
	5400 4100 5400 4700
Wire Wire Line
	5400 4700 5100 4700
Wire Wire Line
	5500 4000 5300 4000
Wire Wire Line
	5300 4000 5300 4600
Wire Wire Line
	5300 4600 5100 4600
Wire Wire Line
	5500 3900 5200 3900
Wire Wire Line
	5200 3900 5200 4500
Wire Wire Line
	5200 4500 5100 4500
NoConn ~ 5100 4100
NoConn ~ 5100 4000
NoConn ~ 5100 3900
Wire Notes Line
	7700 4300 5450 4300
Wire Notes Line
	7700 2500 7700 4300
Wire Notes Line
	5450 4300 5450 2500
Wire Wire Line
	1700 4500 1900 4500
Wire Wire Line
	2100 4600 2300 4600
Wire Wire Line
	2100 5000 2100 5050
Wire Wire Line
	1900 4500 1900 4700
Wire Wire Line
	1900 4500 3200 4500
Wire Wire Line
	2300 4600 2300 4700
Wire Wire Line
	2300 4600 3200 4600
Wire Wire Line
	2100 4100 2300 4100
Wire Wire Line
	1900 6800 2150 6800
Wire Wire Line
	1700 6800 1900 6800
Wire Wire Line
	6350 1250 6450 1250
Wire Wire Line
	3000 4000 3200 4000
Wire Wire Line
	2800 4000 3000 4000
Wire Wire Line
	1900 7100 2150 7100
Wire Wire Line
	2150 6800 2500 6800
Wire Wire Line
	6350 1650 6850 1650
Wire Wire Line
	7150 3900 7250 3900
Wire Wire Line
	6300 3700 6400 3700
Wire Wire Line
	6200 3800 6400 3800
Wire Wire Line
	6100 3900 6400 3900
Wire Wire Line
	6000 4000 6400 4000
Wire Wire Line
	5900 4100 6400 4100
Wire Wire Line
	5800 3450 7150 3450
Wire Wire Line
	1550 4600 2100 4600
Wire Wire Line
	7050 3800 7300 3800
$EndSCHEMATC
