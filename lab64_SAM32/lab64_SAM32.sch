EESchema Schematic File Version 4
LIBS:lab64_SAM32-cache
LIBS:Adafruit Feather M0 WiFi-cache
LIBS:featherM0_SD-cache
EELAYER 26 0
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
Wire Wire Line
	10700 3050 10700 3150
Text Label 10700 3050 0    10   ~ 0
GND
Wire Wire Line
	8900 3050 8900 3150
Text Label 8900 3050 0    10   ~ 0
GND
Wire Wire Line
	10400 3050 10400 3150
Text Label 10400 3050 0    10   ~ 0
GND
Wire Wire Line
	9500 2750 9500 3150
Text Label 9500 2750 0    10   ~ 0
GND
Wire Wire Line
	7800 3150 7800 3050
Text Label 7800 3150 0    10   ~ 0
GND
Wire Wire Line
	2850 2600 3100 2600
Text Label 3050 2600 2    70   ~ 0
AREF
Wire Wire Line
	10300 2550 10400 2550
Wire Wire Line
	10400 2550 10700 2550
Wire Wire Line
	10700 2550 10700 1000
Wire Wire Line
	10700 2550 10700 2750
Wire Wire Line
	10400 2750 10400 2550
Connection ~ 10700 2550
Connection ~ 10400 2550
Text Label 10300 2550 0    10   ~ 0
+3V3
Wire Wire Line
	7800 2650 7800 2550
Wire Wire Line
	7800 2550 7800 2350
Wire Wire Line
	7800 2350 7800 2200
Wire Wire Line
	7900 2550 7800 2550
Wire Wire Line
	9250 2350 7800 2350
Connection ~ 7800 2550
Connection ~ 7800 2350
Text Label 7800 2650 0    10   ~ 0
VBUS
Wire Wire Line
	9200 2950 9400 2950
Wire Wire Line
	9400 2950 9400 2650
Wire Wire Line
	9400 2650 9500 2650
Text Label 9250 3050 0    70   ~ 0
EN
Wire Wire Line
	8100 2550 8900 2550
Wire Wire Line
	9500 2550 9450 2550
Wire Wire Line
	8900 2550 8900 2750
Connection ~ 8900 2550
Connection ~ 9200 2550
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0805-NOOUTLINE C?
U 1 0 5BD0AF5C
P 8900 2950
AR Path="/5BCFDB7D/5BD0AF5C" Ref="C?"  Part="1" 
AR Path="/5BD0AF5C" Ref="C10"  Part="1" 
F 0 "C10" V 8810 2999 50  0000 C CNN
F 1 "10µF" V 8990 2999 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0805-NO" H 8900 2950 50  0001 C CNN
F 3 "" H 8900 2950 50  0001 C CNN
	1    8900 2950
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0603_NO C?
U 1 0 5BD0AF63
P 10700 2950
AR Path="/5BCFDB7D/5BD0AF63" Ref="C?"  Part="1" 
AR Path="/5BD0AF63" Ref="C13"  Part="1" 
F 0 "C13" V 10610 2999 50  0000 C CNN
F 1 "1uF" V 10790 2999 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0603-NO" H 10700 2950 50  0001 C CNN
F 3 "" H 10700 2950 50  0001 C CNN
	1    10700 2950
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5BD0AF6A
P 8900 3250
AR Path="/5BCFDB7D/5BD0AF6A" Ref="#U$?"  Part="1" 
AR Path="/5BD0AF6A" Ref="#U$0101"  Part="1" 
F 0 "#U$0101" H 8900 3250 50  0001 C CNN
F 1 "GND" H 8800 3150 59  0000 L BNN
F 2 "" H 8900 3250 50  0001 C CNN
F 3 "" H 8900 3250 50  0001 C CNN
	1    8900 3250
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5BD0AF70
P 10700 3250
AR Path="/5BCFDB7D/5BD0AF70" Ref="#U$?"  Part="1" 
AR Path="/5BD0AF70" Ref="#U$0102"  Part="1" 
F 0 "#U$0102" H 10700 3250 50  0001 C CNN
F 1 "GND" H 10600 3150 59  0000 L BNN
F 2 "" H 10700 3250 50  0001 C CNN
F 3 "" H 10700 3250 50  0001 C CNN
	1    10700 3250
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0805-NOOUTLINE C?
U 1 0 5BD0AF76
P 10400 2950
AR Path="/5BCFDB7D/5BD0AF76" Ref="C?"  Part="1" 
AR Path="/5BD0AF76" Ref="C12"  Part="1" 
F 0 "C12" V 10310 2999 50  0000 C CNN
F 1 "10µF" V 10490 2999 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0805-NO" H 10400 2950 50  0001 C CNN
F 3 "" H 10400 2950 50  0001 C CNN
	1    10400 2950
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5BD0AF7D
P 10400 3250
AR Path="/5BCFDB7D/5BD0AF7D" Ref="#U$?"  Part="1" 
AR Path="/5BD0AF7D" Ref="#U$0103"  Part="1" 
F 0 "#U$0103" H 10400 3250 50  0001 C CNN
F 1 "GND" H 10300 3150 59  0000 L BNN
F 2 "" H 10400 3250 50  0001 C CNN
F 3 "" H 10400 3250 50  0001 C CNN
	1    10400 3250
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5BD0AF83
P 9500 3250
AR Path="/5BCFDB7D/5BD0AF83" Ref="#U$?"  Part="1" 
AR Path="/5BD0AF83" Ref="#U$0104"  Part="1" 
F 0 "#U$0104" H 9500 3250 50  0001 C CNN
F 1 "GND" H 9400 3150 59  0000 L BNN
F 2 "" H 9500 3250 50  0001 C CNN
F 3 "" H 9500 3250 50  0001 C CNN
	1    9500 3250
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0603_NO C?
U 1 0 5BD0AF8F
P 2650 2600
AR Path="/5BCFDB7D/5BD0AF8F" Ref="C?"  Part="1" 
AR Path="/5BD0AF8F" Ref="C4"  Part="1" 
F 0 "C4" V 2560 2649 50  0000 C CNN
F 1 "1uF" V 2740 2649 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0603-NO" H 2650 2600 50  0001 C CNN
F 3 "" H 2650 2600 50  0001 C CNN
	1    2650 2600
	0    1    1    0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:+3V3 #+3V?
U 1 0 5BD0AF96
P 5750 4550
AR Path="/5BCFDB7D/5BD0AF96" Ref="#+3V?"  Part="1" 
AR Path="/5BD0AF96" Ref="#+3V0101"  Part="1" 
F 0 "#+3V0101" H 5750 4550 50  0001 C CNN
F 1 "+3V3" H 5650 4600 59  0000 L BNN
F 2 "" H 5750 4550 50  0001 C CNN
F 3 "" H 5750 4550 50  0001 C CNN
	1    5750 4550
	-1   0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:VREG_SOT23-5 U?
U 1 0 5BD0AF9C
P 9900 2650
AR Path="/5BCFDB7D/5BD0AF9C" Ref="U?"  Part="1" 
AR Path="/5BD0AF9C" Ref="U4"  Part="1" 
F 0 "U4" H 9600 2890 42  0000 L BNN
F 1 "AP2112-3.3" H 9600 2350 42  0000 L BNN
F 2 "Adafruit Feather M4 Express:SOT23-5" H 9900 2650 50  0001 C CNN
F 3 "" H 9900 2650 50  0001 C CNN
	1    9900 2650
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0805-NOOUTLINE C?
U 1 0 5BD0AFB6
P 4550 1700
AR Path="/5BCFDB7D/5BD0AFB6" Ref="C?"  Part="1" 
AR Path="/5BD0AFB6" Ref="C5"  Part="1" 
F 0 "C5" V 4460 1749 50  0000 C CNN
F 1 "10uF" V 4640 1749 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0805-NO" H 4550 1700 50  0001 C CNN
F 3 "" H 4550 1700 50  0001 C CNN
	1    4550 1700
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0603_NO C?
U 1 0 5BD0AFC9
P 5150 1700
AR Path="/5BCFDB7D/5BD0AFC9" Ref="C?"  Part="1" 
AR Path="/5BD0AFC9" Ref="C9"  Part="1" 
F 0 "C9" V 5060 1749 50  0000 C CNN
F 1 "1uF" V 5240 1749 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0603-NO" H 5150 1700 50  0001 C CNN
F 3 "" H 5150 1700 50  0001 C CNN
	1    5150 1700
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0603_NO C?
U 1 0 5BD0AFD0
P 4850 1700
AR Path="/5BCFDB7D/5BD0AFD0" Ref="C?"  Part="1" 
AR Path="/5BD0AFD0" Ref="C7"  Part="1" 
F 0 "C7" V 4760 1749 50  0000 C CNN
F 1 "1uF" V 4940 1749 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0603-NO" H 4850 1700 50  0001 C CNN
F 3 "" H 4850 1700 50  0001 C CNN
	1    4850 1700
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:VBUS #U$?
U 1 0 5BD0AFD7
P 7800 950
AR Path="/5BCFDB7D/5BD0AFD7" Ref="#U$?"  Part="1" 
AR Path="/5BD0AFD7" Ref="#U$0105"  Part="1" 
F 0 "#U$0105" H 7800 950 50  0001 C CNN
F 1 "VBUS" H 7740 990 42  0000 L BNN
F 2 "" H 7800 950 50  0001 C CNN
F 3 "" H 7800 950 50  0001 C CNN
	1    7800 950 
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:VBAT #U$?
U 1 0 5BD0AFDD
P 9450 950
AR Path="/5BCFDB7D/5BD0AFDD" Ref="#U$?"  Part="1" 
AR Path="/5BD0AFDD" Ref="#U$0106"  Part="1" 
F 0 "#U$0106" H 9450 950 50  0001 C CNN
F 1 "VBAT" H 9390 990 42  0000 L BNN
F 2 "" H 9450 950 50  0001 C CNN
F 3 "" H 9450 950 50  0001 C CNN
	1    9450 950 
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:DIODE-SCHOTTKYSOD-123 D?
U 1 0 5BD0AFE3
P 8000 2550
AR Path="/5BCFDB7D/5BD0AFE3" Ref="D?"  Part="1" 
AR Path="/5BD0AFE3" Ref="D1"  Part="1" 
F 0 "D1" H 8000 2650 42  0000 C CNN
F 1 "MBR120" H 8000 2452 42  0000 C CNN
F 2 "Adafruit Feather M4 Express:SOD-123" H 8000 2550 50  0001 C CNN
F 3 "" H 8000 2550 50  0001 C CNN
	1    8000 2550
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:MOSFET-P Q?
U 1 0 5BD0AFEA
P 9450 2250
AR Path="/5BCFDB7D/5BD0AFEA" Ref="Q?"  Part="1" 
AR Path="/5BD0AFEA" Ref="Q3"  Part="1" 
F 0 "Q3" H 9200 2200 42  0000 L BNN
F 1 "DMG341" H 9150 2050 42  0000 L BNN
F 2 "Adafruit Feather M4 Express:SOT23-R" H 9450 2250 50  0001 C CNN
F 3 "" H 9450 2250 50  0001 C CNN
	1    9450 2250
	1    0    0    1   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5BD0AFF1
P 7800 3250
AR Path="/5BCFDB7D/5BD0AFF1" Ref="#U$?"  Part="1" 
AR Path="/5BD0AFF1" Ref="#U$0107"  Part="1" 
F 0 "#U$0107" H 7800 3250 50  0001 C CNN
F 1 "GND" H 7700 3150 59  0000 L BNN
F 2 "" H 7800 3250 50  0001 C CNN
F 3 "" H 7800 3250 50  0001 C CNN
	1    7800 3250
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:RESISTOR_0603_NOOUT R?
U 1 0 5BD0AFF7
P 9200 2750
AR Path="/5BCFDB7D/5BD0AFF7" Ref="R?"  Part="1" 
AR Path="/5BD0AFF7" Ref="R7"  Part="1" 
F 0 "R7" H 9050 2809 50  0000 L BNN
F 1 "10K" H 9150 2620 40  0000 L BNB
F 2 "Adafruit Feather M4 Express:0603-NO" H 9200 2750 50  0001 C CNN
F 3 "" H 9200 2750 50  0001 C CNN
	1    9200 2750
	0    -1   -1   0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:RESISTOR_4PACK_NO R?
U 3 0 5BD0AFFE
P 7800 2850
AR Path="/5BCFDB7D/5BD0AFFE" Ref="R?"  Part="3" 
AR Path="/5BD0AFFE" Ref="R1"  Part="3" 
F 0 "R1" H 7800 2950 50  0000 C CNN
F 1 "100K" H 7800 2850 40  0000 C CNB
F 2 "Adafruit Feather M4 Express:RESPACK_4X0603_NO" H 7800 2850 50  0001 C CNN
F 3 "" H 7800 2850 50  0001 C CNN
	3    7800 2850
	0    -1   -1   0   
$EndComp
Text Notes 9750 2250 0    79   ~ 0
REGULATOR\n
Text Label 9700 1600 0    10   ~ 0
GND
Wire Wire Line
	9250 1500 9250 1800
Wire Wire Line
	9250 1800 9350 1800
Text Label 9350 1800 0    10   ~ 0
GND
Wire Wire Line
	9250 1400 9350 1400
Wire Wire Line
	1100 3350 1500 3350
Text Label 1150 3350 0    70   ~ 0
V_DIV
Connection ~ 1100 3350
$Comp
L Adafruit_Feather_M4_Express-eagle-import:MCP73831_2 U?
U 1 0 5BD0C00D
P 8750 1400
AR Path="/5BCFDB7D/5BD0C00D" Ref="U?"  Part="1" 
AR Path="/5BD0C00D" Ref="U3"  Part="1" 
F 0 "U3" H 8700 1400 42  0000 L BNN
F 1 "MCP73831T-2ACI/OT" H 8350 900 42  0000 L BNN
F 2 "Adafruit Feather M4 Express:SOT23-5" H 8750 1400 50  0001 C CNN
F 3 "" H 8750 1400 50  0001 C CNN
	1    8750 1400
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:LED0805_NOOUTLINE CHG?
U 1 0 5BD0C014
P 8150 2000
AR Path="/5BCFDB7D/5BD0C014" Ref="CHG?"  Part="1" 
AR Path="/5BD0C014" Ref="CHG1"  Part="1" 
F 0 "CHG1" H 8100 2175 42  0000 C CNN
F 1 "ORANGE" H 8100 1890 42  0000 C CNN
F 2 "Adafruit Feather M4 Express:CHIPLED_0805_NOOUTLINE" H 8150 2000 50  0001 C CNN
F 3 "" H 8150 2000 50  0001 C CNN
	1    8150 2000
	0    -1   -1   0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:RESISTOR_0603_NOOUT R?
U 1 0 5BD0C01B
P 8150 1700
AR Path="/5BCFDB7D/5BD0C01B" Ref="R?"  Part="1" 
AR Path="/5BD0C01B" Ref="R6"  Part="1" 
F 0 "R6" H 8150 1800 50  0000 C CNN
F 1 "1K" H 8150 1700 40  0000 C CNB
F 2 "Adafruit Feather M4 Express:0603-NO" H 8150 1700 50  0001 C CNN
F 3 "" H 8150 1700 50  0001 C CNN
	1    8150 1700
	0    -1   -1   0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0805-NOOUTLINE C?
U 1 0 5BD0C022
P 9700 1500
AR Path="/5BCFDB7D/5BD0C022" Ref="C?"  Part="1" 
AR Path="/5BD0C022" Ref="C11"  Part="1" 
F 0 "C11" V 9610 1549 50  0000 C CNN
F 1 "10µF" V 9790 1549 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0805-NO" H 9700 1500 50  0001 C CNN
F 3 "" H 9700 1500 50  0001 C CNN
	1    9700 1500
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:RESISTOR_0603_NOOUT R?
U 1 0 5BD0C02F
P 9350 1600
AR Path="/5BCFDB7D/5BD0C02F" Ref="R?"  Part="1" 
AR Path="/5BD0C02F" Ref="R8"  Part="1" 
F 0 "R8" H 9350 1700 50  0000 C CNN
F 1 "10K\\" H 9350 1600 40  0000 C CNB
F 2 "Adafruit Feather M4 Express:0603-NO" H 9350 1600 50  0001 C CNN
F 3 "" H 9350 1600 50  0001 C CNN
	1    9350 1600
	0    1    1    0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5BD0C036
P 5750 7000
AR Path="/5BCFDB7D/5BD0C036" Ref="#U$?"  Part="1" 
AR Path="/5BD0C036" Ref="#U$0108"  Part="1" 
F 0 "#U$0108" H 5750 7000 50  0001 C CNN
F 1 "GND" H 5650 6900 59  0000 L BNN
F 2 "" H 5750 7000 50  0001 C CNN
F 3 "" H 5750 7000 50  0001 C CNN
	1    5750 7000
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:VBAT #U$?
U 1 0 5BD0C048
P 1100 2850
AR Path="/5BCFDB7D/5BD0C048" Ref="#U$?"  Part="1" 
AR Path="/5BD0C048" Ref="#U$0109"  Part="1" 
F 0 "#U$0109" H 1100 2850 50  0001 C CNN
F 1 "VBAT" H 1040 2890 42  0000 L BNN
F 2 "" H 1100 2850 50  0001 C CNN
F 3 "" H 1100 2850 50  0001 C CNN
	1    1100 2850
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #GND?
U 1 0 5BD0C04E
P 1100 3850
AR Path="/5BCFDB7D/5BD0C04E" Ref="#GND?"  Part="1" 
AR Path="/5BD0C04E" Ref="#GND0101"  Part="1" 
F 0 "#GND0101" H 1100 3850 50  0001 C CNN
F 1 "GND" H 1000 3750 59  0000 L BNN
F 2 "" H 1100 3850 50  0001 C CNN
F 3 "" H 1100 3850 50  0001 C CNN
	1    1100 3850
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:RESISTOR_4PACK_NO R?
U 1 0 5BD0C054
P 1100 3150
AR Path="/5BCFDB7D/5BD0C054" Ref="R?"  Part="1" 
AR Path="/5BD0C054" Ref="R1"  Part="1" 
F 0 "R1" H 1100 3250 50  0000 C CNN
F 1 "100K" H 1100 3150 40  0000 C CNB
F 2 "Adafruit Feather M4 Express:RESPACK_4X0603_NO" H 1100 3150 50  0001 C CNN
F 3 "" H 1100 3150 50  0001 C CNN
	1    1100 3150
	0    -1   -1   0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:RESISTOR_4PACK_NO R?
U 2 0 5BD0C05B
P 1100 3550
AR Path="/5BCFDB7D/5BD0C05B" Ref="R?"  Part="2" 
AR Path="/5BD0C05B" Ref="R1"  Part="2" 
F 0 "R1" H 1100 3650 50  0000 C CNN
F 1 "100K" H 1100 3550 40  0000 C CNB
F 2 "Adafruit Feather M4 Express:RESPACK_4X0603_NO" H 1100 3550 50  0001 C CNN
F 3 "" H 1100 3550 50  0001 C CNN
	2    1100 3550
	0    1    1    0   
$EndComp
Text Notes 8400 2000 0    59   ~ 0
10K  = 100mA
Text Notes 8400 2100 0    59   ~ 0
5.0K  = 200mA
Text Notes 8400 2200 0    59   ~ 0
2.0K  = 500mA
Text Notes 8400 2300 0    59   ~ 0
1.0K  = 1000mA
Text Notes 8200 700  0    79   ~ 0
BATTERY CHARGING
Wire Wire Line
	2450 4600 2350 4600
Wire Wire Line
	2850 4600 3100 4600
$Comp
L Adafruit_Feather_M4_Express-eagle-import:LED0805_NOOUTLINE L?
U 1 0 5BD110C0
P 2150 4600
AR Path="/5BCFDB7D/5BD110C0" Ref="L?"  Part="1" 
AR Path="/5BD110C0" Ref="L1"  Part="1" 
F 0 "L1" H 2100 4775 42  0000 C CNN
F 1 "RED" H 2100 4490 42  0000 C CNN
F 2 "Adafruit Feather M4 Express:CHIPLED_0805_NOOUTLINE" H 2150 4600 50  0001 C CNN
F 3 "" H 2150 4600 50  0001 C CNN
	1    2150 4600
	-1   0    0    1   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:RESISTOR_0603_NOOUT R?
U 1 0 5BD110C7
P 2650 4600
AR Path="/5BCFDB7D/5BD110C7" Ref="R?"  Part="1" 
AR Path="/5BD110C7" Ref="R3"  Part="1" 
F 0 "R3" H 2650 4700 50  0000 C CNN
F 1 "2.2K" H 2650 4600 40  0000 C CNB
F 2 "Adafruit Feather M4 Express:0603-NO" H 2650 4600 50  0001 C CNN
F 3 "" H 2650 4600 50  0001 C CNN
	1    2650 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 2400 4800 2400
Wire Wire Line
	4900 2400 4800 2400
Connection ~ 4800 2400
Text Label 4750 2400 2    10   ~ 0
GND
Text Label 2750 1950 0    70   ~ 0
~RESET
Connection ~ 2100 1500
Wire Wire Line
	4300 2000 4700 2000
Wire Wire Line
	4700 2000 4700 2100
Wire Wire Line
	4700 2000 4900 2000
Wire Wire Line
	4900 2000 4900 2100
Connection ~ 4700 2000
$Comp
L Adafruit_Feather_M4_Express-eagle-import:TESTPOINTROUND1.5MM TP?
U 1 0 5BD13AF1
P 2750 1500
AR Path="/5BCFDB7D/5BD13AF1" Ref="TP?"  Part="1" 
AR Path="/5BD13AF1" Ref="TP1"  Part="1" 
F 0 "TP1" H 2850 1650 42  0000 L CNN
F 1 "TESTPOINTROUND1.5MM" V 2650 1550 42  0001 L CNN
F 2 "Adafruit Feather M4 Express:TESTPOINT_ROUND_1.5MM" H 2750 1500 50  0001 C CNN
F 3 "" H 2750 1500 50  0001 C CNN
	1    2750 1500
	-1   0    0    1   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:TESTPOINTROUND1.5MM TP?
U 1 0 5BD13AF8
P 2850 1600
AR Path="/5BCFDB7D/5BD13AF8" Ref="TP?"  Part="1" 
AR Path="/5BD13AF8" Ref="TP2"  Part="1" 
F 0 "TP2" H 2950 1750 42  0000 L CNN
F 1 "TESTPOINTROUND1.5MM" V 2915 1820 42  0001 L CNN
F 2 "Adafruit Feather M4 Express:TESTPOINT_ROUND_1.5MM" H 2850 1600 50  0001 C CNN
F 3 "" H 2850 1600 50  0001 C CNN
	1    2850 1600
	-1   0    0    1   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:RESISTOR_0603_NOOUT R?
U 1 0 5BD13AFF
P 2450 1300
AR Path="/5BCFDB7D/5BD13AFF" Ref="R?"  Part="1" 
AR Path="/5BD13AFF" Ref="R2"  Part="1" 
F 0 "R2" H 2400 1400 50  0000 L BNN
F 1 "10K" H 2400 1170 40  0000 L BNB
F 2 "Adafruit Feather M4 Express:0603-NO" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2450 1300
	0    -1   1    0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0603_NO C?
U 1 0 5BD13B19
P 2100 1700
AR Path="/5BCFDB7D/5BD13B19" Ref="C?"  Part="1" 
AR Path="/5BD13B19" Ref="C3"  Part="1" 
F 0 "C3" V 2010 1749 50  0000 C CNN
F 1 "1uF" V 2190 1749 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0603-NO" H 2100 1700 50  0001 C CNN
F 3 "" H 2100 1700 50  0001 C CNN
	1    2100 1700
	1    0    0    1   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5BD13B20
P 2100 2050
AR Path="/5BCFDB7D/5BD13B20" Ref="#U$?"  Part="1" 
AR Path="/5BD13B20" Ref="#U$0110"  Part="1" 
F 0 "#U$0110" H 2100 2050 50  0001 C CNN
F 1 "GND" H 2000 1950 59  0000 L BNN
F 2 "" H 2100 2050 50  0001 C CNN
F 3 "" H 2100 2050 50  0001 C CNN
	1    2100 2050
	-1   0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0805-NOOUTLINE C?
U 1 0 5BD13B57
P 4700 2300
AR Path="/5BCFDB7D/5BD13B57" Ref="C?"  Part="1" 
AR Path="/5BD13B57" Ref="C6"  Part="1" 
F 0 "C6" H 4800 2350 50  0000 C CNN
F 1 "10uF" H 4800 2250 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0805-NO" H 4700 2300 50  0001 C CNN
F 3 "" H 4700 2300 50  0001 C CNN
	1    4700 2300
	-1   0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5BD13B5E
P 4800 2500
AR Path="/5BCFDB7D/5BD13B5E" Ref="#U$?"  Part="1" 
AR Path="/5BD13B5E" Ref="#U$0111"  Part="1" 
F 0 "#U$0111" H 4800 2500 50  0001 C CNN
F 1 "GND" H 4700 2400 59  0000 L BNN
F 2 "" H 4800 2500 50  0001 C CNN
F 3 "" H 4800 2500 50  0001 C CNN
	1    4800 2500
	-1   0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:INDUCTOR L?
U 1 0 5BD13B64
P 4500 2100
AR Path="/5BCFDB7D/5BD13B64" Ref="L?"  Part="1" 
AR Path="/5BD13B64" Ref="L2"  Part="1" 
F 0 "L2" H 4500 2200 42  0000 C CNN
F 1 "10uH" H 4500 2040 42  0000 C CNN
F 2 "Adafruit Feather M4 Express:INDUCTOR_1007" H 4500 2100 50  0001 C CNN
F 3 "" H 4500 2100 50  0001 C CNN
	1    4500 2100
	-1   0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0603_NO C?
U 1 0 5BD13B6B
P 4900 2300
AR Path="/5BCFDB7D/5BD13B6B" Ref="C?"  Part="1" 
AR Path="/5BD13B6B" Ref="C8"  Part="1" 
F 0 "C8" H 4800 2350 50  0000 C CNN
F 1 "1uF" H 4800 2250 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0603-NO" H 4900 2300 50  0001 C CNN
F 3 "" H 4900 2300 50  0001 C CNN
	1    4900 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10750 6000 10750 6100
Wire Wire Line
	10750 5900 10750 6000
Connection ~ 10750 6000
Wire Wire Line
	9350 4900 9550 4900
Text Label 9350 4900 0    70   ~ 0
MOSI
Wire Wire Line
	9550 5100 9350 5100
Text Label 9350 5100 0    70   ~ 0
MISO
Wire Wire Line
	9550 4800 9350 4800
Text Label 9350 4800 0    70   ~ 0
SCK
Wire Wire Line
	10750 4450 10750 4600
Wire Wire Line
	9350 5400 9550 5400
Text Label 9350 5400 0    70   ~ 0
SD_CS
$Comp
L Adafruit_Feather_M0_Adalogger-eagle-import:GND #GND0102
U 1 0 5BD3CC5B
P 10750 6200
F 0 "#GND0102" H 10750 6200 50  0001 C CNN
F 1 "GND" H 10650 6100 59  0000 L BNN
F 2 "" H 10750 6200 50  0001 C CNN
F 3 "" H 10750 6200 50  0001 C CNN
	1    10750 6200
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M0_Adalogger-eagle-import:+3V3 #+3V0102
U 1 0 5BD3CC61
P 10750 4350
F 0 "#+3V0102" H 10750 4350 50  0001 C CNN
F 1 "+3V3" V 10650 4150 59  0000 L BNN
F 2 "" H 10750 4350 50  0001 C CNN
F 3 "" H 10750 4350 50  0001 C CNN
	1    10750 4350
	-1   0    0    -1  
$EndComp
Text Notes 9750 4200 0    79   ~ 0
MICROSD CARD
$Comp
L 503182-1853:503182-1853 J2
U 1 1 5BD3CC6D
P 10150 5300
F 0 "J2" H 10150 6267 50  0000 C CNN
F 1 "503182-1853" H 10150 6176 50  0000 C CNN
F 2 "503182-1853:MOLEX_503182-1853" H 10150 5300 50  0001 L BNN
F 3 "Molex, LLC" H 10150 5300 50  0001 L BNN
F 4 "Conn Micro SD Card SKT 8 POS 1.09mm Solder RA SMD Embossed T/R 0.5A/Contact" H 10150 5300 50  0001 L BNN "Field4"
F 5 "5031821853" H 10150 5300 50  0001 L BNN "Field5"
F 6 "None" H 10150 5300 50  0001 L BNN "Field6"
F 7 "None" H 10150 5300 50  0001 L BNN "Field7"
F 8 "Unavailable" H 10150 5300 50  0001 L BNN "Field8"
	1    10150 5300
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M0_Adalogger-eagle-import:GND #GND?
U 1 0 5BD44DCD
P 850 5250
AR Path="/5BD3B1CE/5BD44DCD" Ref="#GND?"  Part="1" 
AR Path="/5BD44DCD" Ref="#GND0103"  Part="1" 
F 0 "#GND0103" H 850 5250 50  0001 C CNN
F 1 "GND" H 750 5150 59  0000 L BNN
F 2 "" H 850 5250 50  0001 C CNN
F 3 "" H 850 5250 50  0001 C CNN
	1    850  5250
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M0_Adalogger-eagle-import:VBUS #U$?
U 1 0 5BD44DD3
P 850 4750
AR Path="/5BD3B1CE/5BD44DD3" Ref="#U$?"  Part="1" 
AR Path="/5BD44DD3" Ref="#U$0112"  Part="1" 
F 0 "#U$0112" H 850 4750 50  0001 C CNN
F 1 "VBUS" H 790 4790 42  0000 L BNN
F 2 "" H 850 4750 50  0001 C CNN
F 3 "" H 850 4750 50  0001 C CNN
	1    850  4750
	1    0    0    -1  
$EndComp
$Comp
L 10118194-0001LF:10118194-0001LF J?
U 1 1 5BD44DDE
P 1350 5050
AR Path="/5BD3B1CE/5BD44DDE" Ref="J?"  Part="1" 
AR Path="/5BD44DDE" Ref="J1"  Part="1" 
F 0 "J1" H 1350 5050 50  0000 C CNN
F 1 "10118194-0001LF" H 1350 4800 50  0000 C CNN
F 2 "10118194-0001LF:FRAMATOME_10118194-0001LF" H 1350 5050 50  0001 L BNN
F 3 "Amphenol FCI" H 1350 5050 50  0001 L BNN
F 4 "Micro Usb, 2.0 Type b, Rcpt, Smt" H 1350 5050 50  0001 L BNN "Field4"
F 5 "10118194-0001LF" H 1350 5050 50  0001 L BNN "Field5"
F 6 "None" H 1350 5050 50  0001 L BNN "Field6"
F 7 "None" H 1350 5050 50  0001 L BNN "Field7"
F 8 "Unavailable" H 1350 5050 50  0001 L BNN "Field8"
	1    1350 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	850  4850 850  4950
Text Label 6100 4000 0    70   ~ 0
RESET
Text Label 6200 2900 0    70   ~ 0
GPIO0
Wire Wire Line
	6250 3450 6150 3350
Wire Wire Line
	5350 3150 5450 3150
Wire Wire Line
	4950 3150 5350 3150
Connection ~ 5350 3150
Text Label 5250 3150 2    70   ~ 0
RTS
Wire Wire Line
	6250 3350 6150 3450
Wire Wire Line
	5350 3450 5350 3650
Wire Wire Line
	5350 3650 5450 3650
Wire Wire Line
	5350 3650 4950 3650
Connection ~ 5350 3650
Text Label 5250 3650 2    70   ~ 0
DTR
Wire Wire Line
	6050 3650 5850 3650
Wire Wire Line
	5850 3150 6050 3150
Wire Wire Line
	6450 5950 6800 5950
Text Label 6500 5950 0    70   ~ 0
MOSI
Wire Wire Line
	6450 6350 6800 6350
Text Label 6550 6350 0    70   ~ 0
SDA
Wire Wire Line
	6450 6250 6800 6250
Text Label 6550 6250 0    70   ~ 0
SCL
Wire Wire Line
	6800 6050 6450 6050
Text Label 6500 6050 0    70   ~ 0
MISO
Wire Wire Line
	6450 5250 6800 5250
Text Label 6500 5250 0    70   ~ 0
SCK
$Comp
L Adafruit_HUZZAH32_ESP32_Feather-eagle-import:TRANSISTOR_NPNSOT23-3 Q?
U 1 0 5BD750CF
P 6150 3650
AR Path="/5BCFDB41/5BD750CF" Ref="Q?"  Part="1" 
AR Path="/5BD750CF" Ref="Q2"  Part="1" 
F 0 "Q2" H 6350 3650 59  0000 L BNN
F 1 "mmbt2222" H 6350 3550 59  0000 L BNN
F 2 "Adafruit HUZZAH32 ESP32 Feather:SOT23-3" H 6150 3650 50  0001 C CNN
F 3 "" H 6150 3650 50  0001 C CNN
	1    6150 3650
	1    0    0    1   
$EndComp
$Comp
L Adafruit_HUZZAH32_ESP32_Feather-eagle-import:TRANSISTOR_NPNSOT23-3 Q?
U 1 0 5BD750D6
P 6150 3150
AR Path="/5BCFDB41/5BD750D6" Ref="Q?"  Part="1" 
AR Path="/5BD750D6" Ref="Q1"  Part="1" 
F 0 "Q1" H 6350 3150 59  0000 L BNN
F 1 "mmbt2222" H 6350 3050 59  0000 L BNN
F 2 "Adafruit HUZZAH32 ESP32 Feather:SOT23-3" H 6150 3150 50  0001 C CNN
F 3 "" H 6150 3150 50  0001 C CNN
	1    6150 3150
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_HUZZAH32_ESP32_Feather-eagle-import:RESISTOR_4PACK R?
U 2 0 5BD750EF
P 5650 3150
AR Path="/5BCFDB41/5BD750EF" Ref="R?"  Part="2" 
AR Path="/5BD750EF" Ref="R5"  Part="2" 
F 0 "R5" H 5650 3250 50  0000 C CNN
F 1 "10K" H 5650 3150 40  0000 C CNB
F 2 "Adafruit HUZZAH32 ESP32 Feather:RESPACK_4X0603" H 5650 3150 50  0001 C CNN
F 3 "" H 5650 3150 50  0001 C CNN
	2    5650 3150
	-1   0    0    1   
$EndComp
$Comp
L Adafruit_HUZZAH32_ESP32_Feather-eagle-import:RESISTOR_4PACK R?
U 4 0 5BD750F6
P 5650 3650
AR Path="/5BCFDB41/5BD750F6" Ref="R?"  Part="4" 
AR Path="/5BD750F6" Ref="R5"  Part="4" 
F 0 "R5" H 5650 3750 50  0000 C CNN
F 1 "10K" H 5650 3650 40  0000 C CNB
F 2 "Adafruit HUZZAH32 ESP32 Feather:RESPACK_4X0603" H 5650 3650 50  0001 C CNN
F 3 "" H 5650 3650 50  0001 C CNN
	4    5650 3650
	1    0    0    -1  
$EndComp
Text Label 2850 5050 0    50   ~ 0
USB+
Text Label 2850 4950 0    50   ~ 0
USB-
Text Label 4350 4000 0    50   ~ 0
TX
Text Label 4350 4100 0    50   ~ 0
RX
Wire Wire Line
	6450 4850 6450 3850
Wire Wire Line
	6250 3850 6450 3850
Wire Wire Line
	6450 4950 6550 4950
Wire Wire Line
	6550 4950 6550 2950
Wire Wire Line
	6250 2950 6550 2950
Wire Wire Line
	4300 4200 4550 4200
Wire Wire Line
	4300 4300 4550 4300
Text Label 4350 4300 0    50   ~ 0
MOSI
$Comp
L Adafruit_Feather_M4_Express-eagle-import:+3V3 #+3V?
U 1 0 5BD13B45
P 4400 1200
AR Path="/5BCFDB7D/5BD13B45" Ref="#+3V?"  Part="1" 
AR Path="/5BD13B45" Ref="#+3V0103"  Part="1" 
F 0 "#+3V0103" H 4400 1200 50  0001 C CNN
F 1 "+3V3" H 4100 1150 59  0000 L BNN
F 2 "" H 4400 1200 50  0001 C CNN
F 3 "" H 4400 1200 50  0001 C CNN
	1    4400 1200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 1900 4400 1900
Wire Wire Line
	4400 1900 4400 1800
Wire Wire Line
	4300 1500 4400 1500
Connection ~ 4400 1500
Wire Wire Line
	4400 1500 4400 1300
Wire Wire Line
	4300 1600 4400 1600
Connection ~ 4400 1600
Wire Wire Line
	4400 1600 4400 1500
Wire Wire Line
	4300 1700 4400 1700
Connection ~ 4400 1700
Wire Wire Line
	4400 1700 4400 1600
Wire Wire Line
	4300 1800 4400 1800
Connection ~ 4400 1800
Wire Wire Line
	4400 1800 4400 1700
$Comp
L ATSAMD51J20A-AU:ATSAMD51J20A-AU U2
U 1 1 5BD7190E
P 3700 3300
F 0 "U2" H 3700 5367 50  0000 C CNN
F 1 "ATSAMD51J20A-AU" H 3700 5276 50  0000 C CNN
F 2 "QFP50P1200X1200X120-64N" H 3700 3300 50  0001 L BNN
F 3 "Microchip" H 3700 3300 50  0001 L BNN
F 4 "120MHZ 1024KB Flash 64 TQFP PKG inTray 85CTemp, 64 TQFP 10x10x1mm TRAY" H 3700 3300 50  0001 L BNN "Field4"
F 5 "TQFP-64 Microchip" H 3700 3300 50  0001 L BNN "Field5"
F 6 "None" H 3700 3300 50  0001 L BNN "Field6"
F 7 "ATSAMD51J20A-AU" H 3700 3300 50  0001 L BNN "Field7"
F 8 "Unavailable" H 3700 3300 50  0001 L BNN "Field8"
	1    3700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1500 2750 1500
Wire Wire Line
	3100 1600 2850 1600
Text Label 2850 1500 0    50   ~ 0
SWCLK
Text Label 2850 1600 0    50   ~ 0
SWDIO
$Comp
L Adafruit_Feather_M4_Express-eagle-import:RESISTOR_0603_NOOUT R?
U 1 0 5C1A91EE
P 2750 1300
AR Path="/5BCFDB7D/5C1A91EE" Ref="R?"  Part="1" 
AR Path="/5C1A91EE" Ref="R4"  Part="1" 
F 0 "R4" H 2700 1300 50  0000 L BNN
F 1 "10K" H 2700 1170 40  0000 L BNB
F 2 "Adafruit Feather M4 Express:0603-NO" H 2750 1300 50  0001 C CNN
F 3 "" H 2750 1300 50  0001 C CNN
	1    2750 1300
	0    -1   1    0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:+3V3 #+3V?
U 1 0 5C1A91F5
P 2600 1000
AR Path="/5BCFDB7D/5C1A91F5" Ref="#+3V?"  Part="1" 
AR Path="/5C1A91F5" Ref="#+3V0104"  Part="1" 
F 0 "#+3V0104" H 2600 1000 50  0001 C CNN
F 1 "+3V3" H 2450 1050 59  0000 L BNN
F 2 "" H 2600 1000 50  0001 C CNN
F 3 "" H 2600 1000 50  0001 C CNN
	1    2600 1000
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:SWITCH_TACT_SMT4.6X2.8 SW?
U 1 0 5BD0BFF9
P 1900 1500
AR Path="/5BCFDB7D/5BD0BFF9" Ref="SW?"  Part="1" 
AR Path="/5BD0BFF9" Ref="SW1"  Part="1" 
F 0 "SW1" V 1650 1400 42  0000 L BNN
F 1 "KMR2" H 1825 1250 42  0000 L BNN
F 2 "Adafruit Feather M4 Express:BTN_KMR2_4.6X2.8" H 1900 1500 50  0001 C CNN
F 3 "" H 1900 1500 50  0001 C CNN
	1    1900 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1700 1500 1700 1600
Wire Wire Line
	2100 1600 2100 1500
Connection ~ 2100 1600
Wire Wire Line
	2100 1950 2100 1900
Wire Wire Line
	2100 1900 1700 1900
Wire Wire Line
	1700 1900 1700 1600
Connection ~ 2100 1900
Connection ~ 1700 1600
Wire Wire Line
	4300 4700 4350 4700
Wire Wire Line
	4350 4700 4350 4800
Wire Wire Line
	4300 4800 4350 4800
Connection ~ 4350 4800
Wire Wire Line
	4350 4800 4350 4900
Wire Wire Line
	4300 4900 4350 4900
Connection ~ 4350 4900
Wire Wire Line
	4350 4900 4350 5000
Wire Wire Line
	4300 5000 4350 5000
Connection ~ 4350 5000
Wire Wire Line
	4350 5000 4350 5100
Wire Wire Line
	4300 5100 4350 5100
Connection ~ 4350 5100
Wire Wire Line
	4350 5100 4350 5250
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5C2A18C3
P 4350 5350
AR Path="/5BCFDB7D/5C2A18C3" Ref="#U$?"  Part="1" 
AR Path="/5C2A18C3" Ref="#U$0113"  Part="1" 
F 0 "#U$0113" H 4350 5350 50  0001 C CNN
F 1 "GND" H 4250 5250 59  0000 L BNN
F 2 "" H 4350 5350 50  0001 C CNN
F 3 "" H 4350 5350 50  0001 C CNN
	1    4350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3450 6150 3450
Wire Wire Line
	5350 3350 6150 3350
Wire Wire Line
	5350 3150 5350 3350
$Comp
L dk_RF-Transceiver-Modules:ESP32-WROOM-32 MOD1
U 1 1 5BCFF980
P 5950 4750
F 0 "MOD1" H 6200 3250 60  0000 C CNN
F 1 "ESP32-WROOM-32" H 6200 3050 60  0000 C CNN
F 2 "digikey-footprints:ESP32-WROOM-32D" H 6150 4950 60  0001 L CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 6150 5050 60  0001 L CNN
F 4 "1904-1010-1-ND" H 6150 5150 60  0001 L CNN "Digi-Key_PN"
F 5 "ESP32-WROOM-32" H 6150 5250 60  0001 L CNN "MPN"
F 6 "RF/IF and RFID" H 6150 5350 60  0001 L CNN "Category"
F 7 "RF Transceiver Modules" H 6150 5450 60  0001 L CNN "Family"
F 8 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 6150 5550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/espressif-systems/ESP32-WROOM-32/1904-1010-1-ND/8544305" H 6150 5650 60  0001 L CNN "DK_Detail_Page"
F 10 "SMD MODULE, ESP32-D0WDQ6, 32MBIT" H 6150 5750 60  0001 L CNN "Description"
F 11 "Espressif Systems" H 6150 5850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6150 5950 60  0001 L CNN "Status"
	1    5950 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 5650 4900 5650
Wire Wire Line
	4900 5650 4900 4000
Wire Wire Line
	4900 4000 4300 4000
Wire Wire Line
	4800 4100 4800 5750
Wire Wire Line
	4800 5750 5050 5750
Wire Wire Line
	4300 4100 4800 4100
Text Label 4350 4200 0    50   ~ 0
MISO
Wire Wire Line
	2200 2300 3100 2300
Connection ~ 2200 2300
Wire Wire Line
	2200 2700 2000 2700
Wire Wire Line
	2450 2700 2200 2700
Connection ~ 2200 2700
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0603_NO C?
U 1 0 5C3CBE48
P 1800 2300
AR Path="/5BCFDB7D/5C3CBE48" Ref="C?"  Part="1" 
AR Path="/5C3CBE48" Ref="C1"  Part="1" 
F 0 "C1" V 1710 2349 50  0000 C CNN
F 1 "22pF" V 1890 2349 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0603-NO" H 1800 2300 50  0001 C CNN
F 3 "" H 1800 2300 50  0001 C CNN
	1    1800 2300
	0    1    -1   0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:CAP_CERAMIC0603_NO C?
U 1 0 5C3CBE4F
P 1800 2700
AR Path="/5BCFDB7D/5C3CBE4F" Ref="C?"  Part="1" 
AR Path="/5C3CBE4F" Ref="C2"  Part="1" 
F 0 "C2" V 1710 2749 50  0000 C CNN
F 1 "22pF" V 1890 2749 50  0000 C CNN
F 2 "Adafruit Feather M4 Express:0603-NO" H 1800 2700 50  0001 C CNN
F 3 "" H 1800 2700 50  0001 C CNN
	1    1800 2700
	0    1    -1   0   
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5C3CBE5C
P 1700 2950
AR Path="/5BCFDB7D/5C3CBE5C" Ref="#U$?"  Part="1" 
AR Path="/5C3CBE5C" Ref="#U$0114"  Part="1" 
F 0 "#U$0114" H 1700 2950 50  0001 C CNN
F 1 "GND" H 1600 2850 59  0000 L BNN
F 2 "" H 1700 2950 50  0001 C CNN
F 3 "" H 1700 2950 50  0001 C CNN
	1    1700 2950
	-1   0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:XTAL-3.2X1.5 X?
U 1 0 5C3CBE62
P 2200 2500
AR Path="/5BCFDB7D/5C3CBE62" Ref="X?"  Part="1" 
AR Path="/5C3CBE62" Ref="X1"  Part="1" 
F 0 "X1" H 2100 2650 50  0000 L BNN
F 1 "32.768" H 2050 2300 50  0000 L BNN
F 2 "Adafruit Feather M4 Express:XTAL3215" H 2200 2500 50  0001 C CNN
F 3 "" H 2200 2500 50  0001 C CNN
	1    2200 2500
	0    -1   1    0   
$EndComp
Wire Wire Line
	2450 2700 2450 2400
Wire Wire Line
	2450 2400 3100 2400
Wire Wire Line
	2000 2300 2200 2300
Wire Wire Line
	1700 2300 1700 2700
Wire Wire Line
	1700 2700 1700 2850
Connection ~ 1700 2700
$Comp
L symbols:MAX3202EETT+T U1
U 1 1 5C54C068
P 1050 6200
F 0 "U1" H 1300 6450 60  0000 C CNN
F 1 "MAX3202EETT+T" H 1300 5800 60  0000 C CNN
F 2 "custom-footprints:MAX3202EETT&plus_T" H 2150 6440 60  0001 C CNN
F 3 "" H 1050 6200 60  0000 C CNN
	1    1050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6050 850  5900
Wire Wire Line
	850  6450 850  6550
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5C608AA6
P 850 6650
AR Path="/5BCFDB7D/5C608AA6" Ref="#U$?"  Part="1" 
AR Path="/5C608AA6" Ref="#U$0115"  Part="1" 
F 0 "#U$0115" H 850 6650 50  0001 C CNN
F 1 "GND" H 750 6550 59  0000 L BNN
F 2 "" H 850 6650 50  0001 C CNN
F 3 "" H 850 6650 50  0001 C CNN
	1    850  6650
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M4_Express-eagle-import:+3V3 #+3V?
U 1 0 5C628160
P 850 5800
AR Path="/5BCFDB7D/5C628160" Ref="#+3V?"  Part="1" 
AR Path="/5C628160" Ref="#+3V0105"  Part="1" 
F 0 "#+3V0105" H 850 5800 50  0001 C CNN
F 1 "+3V3" H 550 5700 59  0000 L BNN
F 2 "" H 850 5800 50  0001 C CNN
F 3 "" H 850 5800 50  0001 C CNN
	1    850  5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2600 2550 2850
Wire Wire Line
	2550 2850 1700 2850
Connection ~ 1700 2850
Text Label 2850 4600 0    50   ~ 0
LED1
Wire Wire Line
	1850 5050 2150 5050
Wire Wire Line
	1850 4950 1900 4950
Wire Wire Line
	1900 6050 1900 4950
Connection ~ 1900 4950
Wire Wire Line
	1750 6450 2150 6450
Wire Wire Line
	2150 6450 2150 5050
Connection ~ 2150 5050
Wire Wire Line
	850  6450 850  6350
Connection ~ 850  6450
Wire Wire Line
	1900 6050 1700 6050
Text Notes 1050 5850 0    79   ~ 0
ESD PROT.
Text Notes 1050 4750 0    79   ~ 0
USB CONN.
Text Notes 5400 2900 0    79   ~ 0
AUTORESET
Wire Wire Line
	2050 4600 1900 4600
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5C98B339
P 1900 4700
AR Path="/5BCFDB7D/5C98B339" Ref="#U$?"  Part="1" 
AR Path="/5C98B339" Ref="#U$0116"  Part="1" 
F 0 "#U$0116" H 1900 4700 50  0001 C CNN
F 1 "GND" H 1800 4600 59  0000 L BNN
F 2 "" H 1900 4700 50  0001 C CNN
F 3 "" H 1900 4700 50  0001 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1950 2450 1950
Wire Wire Line
	2450 1950 2450 1500
Wire Wire Line
	2450 1500 2100 1500
Wire Wire Line
	2450 1100 2600 1100
Connection ~ 2450 1500
Wire Wire Line
	1900 4950 3100 4950
Wire Wire Line
	2150 5050 3100 5050
Connection ~ 2600 1100
Wire Wire Line
	2600 1100 2750 1100
NoConn ~ 15350 18150
NoConn ~ 850  6150
NoConn ~ 850  6250
Wire Wire Line
	5650 6850 5650 6900
Wire Wire Line
	5650 6900 5750 6900
Wire Wire Line
	5950 6900 5950 6850
Wire Wire Line
	5750 6850 5750 6900
Connection ~ 5750 6900
Wire Wire Line
	5850 6850 5850 6900
Connection ~ 5850 6900
Wire Wire Line
	5850 6900 5950 6900
Wire Wire Line
	5750 6900 5850 6900
Connection ~ 2750 1500
$Comp
L Adafruit_Feather_M4_Express-eagle-import:+3V3 #+3V?
U 1 0 5CCC6F9B
P 10700 900
AR Path="/5BCFDB7D/5CCC6F9B" Ref="#+3V?"  Part="1" 
AR Path="/5CCC6F9B" Ref="#+3V0106"  Part="1" 
F 0 "#+3V0106" H 10700 900 50  0001 C CNN
F 1 "+3V3" V 10600 700 59  0000 L BNN
F 2 "" H 10700 900 50  0001 C CNN
F 3 "" H 10700 900 50  0001 C CNN
	1    10700 900 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 1500 4550 1500
Wire Wire Line
	4550 1500 4850 1500
Connection ~ 4550 1500
Wire Wire Line
	4850 1500 5150 1500
Connection ~ 4850 1500
Wire Wire Line
	4550 1800 4850 1800
Wire Wire Line
	4850 1800 5150 1800
Connection ~ 4850 1800
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5CDFD672
P 5150 1900
AR Path="/5BCFDB7D/5CDFD672" Ref="#U$?"  Part="1" 
AR Path="/5CDFD672" Ref="#U$0117"  Part="1" 
F 0 "#U$0117" H 5150 1900 50  0001 C CNN
F 1 "GND" H 5050 1800 59  0000 L BNN
F 2 "" H 5150 1900 50  0001 C CNN
F 3 "" H 5150 1900 50  0001 C CNN
	1    5150 1900
	-1   0    0    -1  
$EndComp
Connection ~ 5150 1800
Connection ~ 4700 2100
Text Notes 4650 1400 0    59   ~ 0
DECOUPLING\n
Wire Wire Line
	9200 2550 8900 2550
$Comp
L Adafruit_Feather_M4_Express-eagle-import:GND #U$?
U 1 0 5BD0C029
P 9700 1700
AR Path="/5BCFDB7D/5BD0C029" Ref="#U$?"  Part="1" 
AR Path="/5BD0C029" Ref="#U$0118"  Part="1" 
F 0 "#U$0118" H 9700 1700 50  0001 C CNN
F 1 "GND" H 9600 1600 59  0000 L BNN
F 2 "" H 9700 1700 50  0001 C CNN
F 3 "" H 9700 1700 50  0001 C CNN
	1    9700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2050 9450 1300
Wire Wire Line
	9450 1050 9450 1300
Connection ~ 9450 1300
Wire Wire Line
	9250 1300 9450 1300
Wire Wire Line
	9700 1300 9450 1300
Wire Wire Line
	8250 1500 8150 1500
Wire Wire Line
	7800 1300 8250 1300
Connection ~ 7800 1300
Wire Wire Line
	7800 1300 7800 1050
Wire Wire Line
	8150 2200 7800 2200
Connection ~ 7800 2200
Wire Wire Line
	7800 2200 7800 1300
Wire Wire Line
	9450 2450 9450 2550
Connection ~ 9450 2550
Wire Wire Line
	9450 2550 9200 2550
NoConn ~ 10300 2750
NoConn ~ 9550 5200
NoConn ~ 9550 5300
NoConn ~ 9550 5600
NoConn ~ 9550 5700
Text Notes 5300 4350 0    79   ~ 0
WROOM ESP32
$EndSCHEMATC
