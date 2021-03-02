EESchema Schematic File Version 4
LIBS:pa3gyf-gpsdocxo-2016-v2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
Title "pa3gyf-gpsdocxo-2016-v2"
Date "2019-10-16"
Rev "v2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "draft"
$EndDescr
$Sheet
S 1300 2700 1600 800 
U 5DA76F48
F0 "pa3gyf-gpsdocxo-2016-v2-psu" 50
F1 "pa3gyf-gpsdocxo-2016-v2-psu.sch" 50
F2 "+21Vu" O R 2900 2850 50 
F3 "+12Vdigi" O R 2900 2950 50 
F4 "+5Vpll" O R 2900 3150 50 
F5 "+12Vda" O R 2900 3250 50 
F6 "+5Vgps" O R 2900 3350 50 
F7 "+5Vdigi" O R 2900 3050 50 
$EndSheet
$Sheet
S 8800 3100 1600 400 
U 5DB14C86
F0 "pa3gyf-gpsdocxo-2016-v2-ocxo-r1" 50
F1 "pa3gyf-gpsdocxo-2016-v2-ocxo-r1.sch" 50
F2 "V21u" I L 8800 3150 50 
F3 "Vsense" O L 8800 3250 50 
F4 "Vref" O L 8800 3350 50 
F5 "Vtune" I L 8800 3450 50 
F6 "10MHz_out_1" O R 10400 3250 50 
F7 "10MHz_out_2" O R 10400 3350 50 
$EndSheet
$Sheet
S 1300 1900 1600 400 
U 5DB8A1AA
F0 "pa3gyf-gpsdocxo-2016-v2-mains-r1" 50
F1 "pa3gyf-gpsdocxo-2016-v2-mains-r1.sch" 50
$EndSheet
$Sheet
S 5700 1900 1900 400 
U 5DB8A248
F0 "pa3gyf-gpsdocxo-2016-v2-gps-r1" 50
F1 "pa3gyf-gpsdocxo-2016-v2-gps-r1.sch" 50
F2 "5V_in" I L 5700 2000 50 
F3 "antenna" B L 5700 2200 50 
F4 "10kHz" O R 7600 1950 50 
F5 "tx" I R 7600 2175 50 
F6 "rx" O R 7600 2250 50 
F7 "pps" O R 7600 2025 50 
$EndSheet
$Sheet
S 900  5950 9100 400 
U 5DB8A2C8
F0 "pa3gyf-gpsdocxo-2016-v2-fp-r1" 50
F1 "pa3gyf-gpsdocxo-2016-v2-fp-r1.sch" 50
$EndSheet
$Sheet
S 8800 1900 1600 400 
U 5DB8CA2D
F0 "pa3gyf-gpsdocxo-2016-v2-da-r1" 50
F1 "pa3gyf-gpsdocxo-2016-v2-da-r1.sch" 50
F2 "10MHZ_in" I L 8800 2200 50 
F3 "10MHz_out1" O R 10400 1950 50 
F4 "10MHz_out2" O R 10400 2050 50 
F5 "10MHz_out3" O R 10400 2150 50 
F6 "10MHz_out4" O R 10400 2250 50 
F7 "12V_in" I L 8800 2000 50 
$EndSheet
$Sheet
S 5700 2900 1900 725 
U 5DB6F5AF
F0 "pa3gyf-gpsdocxo-2016-v2-pll-r2" 50
F1 "pa3gyf-gpsdocxo-2016-v2-pll-r2.sch" 50
F2 "tune_mon" O R 7600 3375 50 
F3 "10MHz_ttl" O R 7600 3450 50 
F4 "10kHz_gps" I L 5700 3200 50 
F5 "ocxo_tune" O R 7600 3525 50 
F6 "ocxo_ref" I R 7600 3225 50 
F7 "fp_tune_in" I R 7600 3000 50 
F8 "fp_tune_ref" O R 7600 3075 50 
F9 "tune_sel" I R 7600 3150 50 
F10 "ocxo_rf" I L 5700 3300 50 
F11 "10kHz_TTL" O R 7600 3300 50 
F12 "+5V" I L 5700 3000 50 
$EndSheet
$Sheet
S 6400 3950 2800 1600
U 5DB739AF
F0 "pa3gyf-gpsdocxo-2016-v2-arduino-micro" 50
F1 "pa3gyf-gpsdocxo-2016-v2-arduino-micro.sch" 50
F2 "fp_tune_select" I R 9200 4850 50 
F3 "fp_heater_red" O R 9200 4550 50 
F4 "fp_heater_green" O R 9200 4650 50 
F5 "fp_locked_red" O R 9200 5050 50 
F6 "fp_locked_green" O R 9200 5150 50 
F7 "fp_tune_man" O R 9200 5350 50 
F8 "tune_sel_rly" O L 6400 5350 50 
F9 "ocxo_isense+" I L 6400 5050 50 
F10 "ocxo_isense" I L 6400 5150 50 
F11 "pll_sense" I L 6400 5450 50 
F12 "fp_pps_green" O R 9200 4350 50 
F13 "fp_fix_red" O R 9200 4150 50 
F14 "fp_fix_green" O R 9200 4250 50 
F15 "fp_gps_enabled" I R 9200 4050 50 
F16 "gps_tx" I L 6400 4250 50 
F17 "gps_rx" O L 6400 4350 50 
F18 "gps_pps" I L 6400 4450 50 
F19 "rs232_dce_rxd" O L 6400 4650 50 
F20 "rs232_dce_dcd" O L 6400 4750 50 
F21 "rs232_dce_txd" I L 6400 4850 50 
F22 "+12V" I L 6400 4000 50 
F23 "+5V" I L 6400 4100 50 
$EndSheet
$Sheet
S 900  900  9100 400 
U 5DB8A417
F0 "pa3gyf-gpsdocxo-2016-v02-rp-r01" 50
F1 "pa3gyf-gpsdocxo-2016-v02-rp-r01.sch" 50
$EndSheet
$EndSCHEMATC
