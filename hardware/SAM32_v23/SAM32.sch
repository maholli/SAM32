EESchema Schematic File Version 4
LIBS:SAM32-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SAM32"
Date "2019-04-05"
Rev "2.3"
Comp "MHolliday"
Comment1 "https://github.com/maholli/SAM32"
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
	2350 2600 3100 2600
Text Label 2650 2600 2    70   ~ 0
AREF
Wire Wire Line
	10300 2550 10400 2550
Wire Wire Line
	10400 2550 10700 2550
Wire Wire Line
	10700 2550 10700 1050
Wire Wire Line
	10700 2550 10700 2750
Wire Wire Line
	10400 2750 10400 2550
Connection ~ 10700 2550
Connection ~ 10400 2550
Text Label 10300 2550 0    10   ~ 0
+3V3
Wire Wire Line
	9400 2650 9500 2650
Text Label 9400 2650 0    47   ~ 0
EN
Wire Wire Line
	9500 2550 9450 2550
Wire Wire Line
	8900 2550 8900 2750
Connection ~ 8900 2550
$Comp
L SAM32-rescue:CAP_CERAMIC0805-NOOUTLINE-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD0AF5C
P 8900 2950
AR Path="/5BCFDB7D/5BD0AF5C" Ref="C?"  Part="1" 
AR Path="/5BD0AF5C" Ref="C4"  Part="1" 
F 0 "C4" H 8750 3050 50  0000 C CNN
F 1 "10uF" H 8750 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8900 2950 50  0001 C CNN
F 3 "" H 8900 2950 50  0001 C CNN
	1    8900 2950
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD0AF63
P 10700 2950
AR Path="/5BCFDB7D/5BD0AF63" Ref="C?"  Part="1" 
AR Path="/5BD0AF63" Ref="C5"  Part="1" 
F 0 "C5" V 10610 2999 50  0000 C CNN
F 1 "1uF" V 10790 2999 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10700 2950 50  0001 C CNN
F 3 "" H 10700 2950 50  0001 C CNN
	1    10700 2950
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BD0AF6A
P 8900 3250
AR Path="/5BCFDB7D/5BD0AF6A" Ref="#U$?"  Part="1" 
AR Path="/5BD0AF6A" Ref="#U$012"  Part="1" 
F 0 "#U$012" H 8900 3250 50  0001 C CNN
F 1 "GND" H 8800 3150 59  0000 L BNN
F 2 "" H 8900 3250 50  0001 C CNN
F 3 "" H 8900 3250 50  0001 C CNN
	1    8900 3250
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BD0AF70
P 10700 3250
AR Path="/5BCFDB7D/5BD0AF70" Ref="#U$?"  Part="1" 
AR Path="/5BD0AF70" Ref="#U$017"  Part="1" 
F 0 "#U$017" H 10700 3250 50  0001 C CNN
F 1 "GND" H 10600 3150 59  0000 L BNN
F 2 "" H 10700 3250 50  0001 C CNN
F 3 "" H 10700 3250 50  0001 C CNN
	1    10700 3250
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0805-NOOUTLINE-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD0AF76
P 10400 2950
AR Path="/5BCFDB7D/5BD0AF76" Ref="C?"  Part="1" 
AR Path="/5BD0AF76" Ref="C2"  Part="1" 
F 0 "C2" V 10310 2999 50  0000 C CNN
F 1 "10uF" V 10490 2999 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10400 2950 50  0001 C CNN
F 3 "" H 10400 2950 50  0001 C CNN
	1    10400 2950
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BD0AF7D
P 10400 3250
AR Path="/5BCFDB7D/5BD0AF7D" Ref="#U$?"  Part="1" 
AR Path="/5BD0AF7D" Ref="#U$016"  Part="1" 
F 0 "#U$016" H 10400 3250 50  0001 C CNN
F 1 "GND" H 10300 3150 59  0000 L BNN
F 2 "" H 10400 3250 50  0001 C CNN
F 3 "" H 10400 3250 50  0001 C CNN
	1    10400 3250
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BD0AF83
P 9500 3250
AR Path="/5BCFDB7D/5BD0AF83" Ref="#U$?"  Part="1" 
AR Path="/5BD0AF83" Ref="#U$014"  Part="1" 
F 0 "#U$014" H 9500 3250 50  0001 C CNN
F 1 "GND" H 9400 3150 59  0000 L BNN
F 2 "" H 9500 3250 50  0001 C CNN
F 3 "" H 9500 3250 50  0001 C CNN
	1    9500 3250
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD0AF8F
P 2150 2600
AR Path="/5BCFDB7D/5BD0AF8F" Ref="C?"  Part="1" 
AR Path="/5BD0AF8F" Ref="C1"  Part="1" 
F 0 "C1" V 2060 2649 50  0000 C CNN
F 1 "1uF" V 2240 2649 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2150 2600 50  0001 C CNN
F 3 "" H 2150 2600 50  0001 C CNN
	1    2150 2600
	0    1    1    0   
$EndComp
$Comp
L SAM32-rescue:VREG_SOT23-5-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue U?
U 1 0 5BD0AF9C
P 9900 2650
AR Path="/5BCFDB7D/5BD0AF9C" Ref="U?"  Part="1" 
AR Path="/5BD0AF9C" Ref="U5"  Part="1" 
F 0 "U5" H 9600 2890 42  0000 L BNN
F 1 "AP2112K-3.3TRG1" H 9600 2350 42  0000 L BNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9900 2650 50  0001 C CNN
F 3 "" H 9900 2650 50  0001 C CNN
	1    9900 2650
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0805-NOOUTLINE-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD0AFB6
P 5250 1700
AR Path="/5BCFDB7D/5BD0AFB6" Ref="C?"  Part="1" 
AR Path="/5BD0AFB6" Ref="C6"  Part="1" 
F 0 "C6" H 5200 1850 50  0000 C CNN
F 1 "10uF" H 5200 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5250 1700 50  0001 C CNN
F 3 "" H 5250 1700 50  0001 C CNN
	1    5250 1700
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD0AFC9
P 5050 1700
AR Path="/5BCFDB7D/5BD0AFC9" Ref="C?"  Part="1" 
AR Path="/5BD0AFC9" Ref="C10"  Part="1" 
F 0 "C10" H 5000 1850 50  0000 C CNN
F 1 "1uF" H 5000 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5050 1700 50  0001 C CNN
F 3 "" H 5050 1700 50  0001 C CNN
	1    5050 1700
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD0AFD0
P 4850 1700
AR Path="/5BCFDB7D/5BD0AFD0" Ref="C?"  Part="1" 
AR Path="/5BD0AFD0" Ref="C3"  Part="1" 
F 0 "C3" H 4800 1850 50  0000 C CNN
F 1 "1uF" H 4800 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4850 1700 50  0001 C CNN
F 3 "" H 4850 1700 50  0001 C CNN
	1    4850 1700
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:VBAT-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BD0AFDD
P 9450 950
AR Path="/5BCFDB7D/5BD0AFDD" Ref="#U$?"  Part="1" 
AR Path="/5BD0AFDD" Ref="#U$013"  Part="1" 
F 0 "#U$013" H 9450 950 50  0001 C CNN
F 1 "VBAT" H 9390 990 42  0000 L BNN
F 2 "" H 9450 950 50  0001 C CNN
F 3 "" H 9450 950 50  0001 C CNN
	1    9450 950 
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:MOSFET-P-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue Q?
U 1 0 5BD0AFEA
P 9450 2250
AR Path="/5BCFDB7D/5BD0AFEA" Ref="Q?"  Part="1" 
AR Path="/5BD0AFEA" Ref="Q3"  Part="1" 
F 0 "Q3" H 9200 2200 42  0000 L BNN
F 1 "DMG341" H 9150 2050 42  0000 L BNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 2250 50  0001 C CNN
F 3 "" H 9450 2250 50  0001 C CNN
	1    9450 2250
	1    0    0    1   
$EndComp
Text Notes 9600 2350 0    79   ~ 0
REGULATOR\n
Text Label 9700 1600 0    10   ~ 0
GND
Wire Wire Line
	9250 1500 9250 1700
Wire Wire Line
	9250 1700 9350 1700
Text Label 9350 1700 0    10   ~ 0
GND
Wire Wire Line
	9250 1400 9350 1400
$Comp
L SAM32-rescue:MCP73831_2-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue U?
U 1 0 5BD0C00D
P 8750 1400
AR Path="/5BCFDB7D/5BD0C00D" Ref="U?"  Part="1" 
AR Path="/5BD0C00D" Ref="U4"  Part="1" 
F 0 "U4" H 8700 1400 42  0000 L BNN
F 1 "MCP73831T-2ACI/OT" H 8400 900 42  0000 L BNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8750 1400 50  0001 C CNN
F 3 "" H 8750 1400 50  0001 C CNN
	1    8750 1400
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:LED0805_NOOUTLINE-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue CHG?
U 1 0 5BD0C014
P 8150 2000
AR Path="/5BCFDB7D/5BD0C014" Ref="CHG?"  Part="1" 
AR Path="/5BD0C014" Ref="CHRG1"  Part="1" 
F 0 "CHRG1" V 8150 2250 42  0000 C CNN
F 1 "ORANGE LED" V 8050 2200 42  0000 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 8150 2000 50  0001 C CNN
F 3 "" H 8150 2000 50  0001 C CNN
	1    8150 2000
	0    -1   -1   0   
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0805-NOOUTLINE-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD0C022
P 9700 1500
AR Path="/5BCFDB7D/5BD0C022" Ref="C?"  Part="1" 
AR Path="/5BD0C022" Ref="C7"  Part="1" 
F 0 "C7" H 9550 1550 50  0000 C CNN
F 1 "10uF" H 9600 1450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9700 1500 50  0001 C CNN
F 3 "" H 9700 1500 50  0001 C CNN
	1    9700 1500
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:VBAT-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BD0C048
P 1700 2450
AR Path="/5BCFDB7D/5BD0C048" Ref="#U$?"  Part="1" 
AR Path="/5BD0C048" Ref="#U$04"  Part="1" 
F 0 "#U$04" H 1700 2450 50  0001 C CNN
F 1 "VBAT" H 1600 2450 42  0000 L BNN
F 2 "" H 1700 2450 50  0001 C CNN
F 3 "" H 1700 2450 50  0001 C CNN
	1    1700 2450
	1    0    0    -1  
$EndComp
Text Notes 8400 2000 0    49   ~ 0
10K  = 100mA
Text Notes 8400 2100 0    49   ~ 0
5.0K  = 200mA
Text Notes 8400 2200 0    49   ~ 0
2.0K  = 500mA
Text Notes 8400 2300 0    49   ~ 0
1.0K  = 1000mA
Text Notes 8200 850  0    79   ~ 0
BATTERY CHARGING
Text Label 2750 1950 0    59   ~ 0
~RESET
Wire Wire Line
	4300 2000 4700 2000
Wire Wire Line
	4700 2000 4700 2100
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD13B19
P 2050 1600
AR Path="/5BCFDB7D/5BD13B19" Ref="C?"  Part="1" 
AR Path="/5BD13B19" Ref="C9"  Part="1" 
F 0 "C9" V 1960 1649 50  0000 C CNN
F 1 "1uF" V 2140 1649 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2050 1600 50  0001 C CNN
F 3 "" H 2050 1600 50  0001 C CNN
	1    2050 1600
	1    0    0    1   
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BD13B20
P 2050 1900
AR Path="/5BCFDB7D/5BD13B20" Ref="#U$?"  Part="1" 
AR Path="/5BD13B20" Ref="#U$05"  Part="1" 
F 0 "#U$05" H 2050 1900 50  0001 C CNN
F 1 "GND" H 1950 1800 59  0000 L BNN
F 2 "" H 2050 1900 50  0001 C CNN
F 3 "" H 2050 1900 50  0001 C CNN
	1    2050 1900
	-1   0    0    -1  
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0805-NOOUTLINE-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD13B57
P 4850 2000
AR Path="/5BCFDB7D/5BD13B57" Ref="C?"  Part="1" 
AR Path="/5BD13B57" Ref="C12"  Part="1" 
F 0 "C12" H 4950 1950 50  0000 C CNN
F 1 "10uF" H 4950 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4850 2000 50  0001 C CNN
F 3 "" H 4850 2000 50  0001 C CNN
	1    4850 2000
	1    0    0    1   
$EndComp
$Comp
L SAM32-rescue:INDUCTOR-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue L?
U 1 0 5BD13B64
P 4500 2100
AR Path="/5BCFDB7D/5BD13B64" Ref="L?"  Part="1" 
AR Path="/5BD13B64" Ref="L1"  Part="1" 
F 0 "L1" H 4500 2200 42  0000 C CNN
F 1 "10uH" H 4500 2040 42  0000 C CNN
F 2 "Inductor_SMD:L_0806_2016Metric" H 4500 2100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/inductor_commercial_power_vls201610hbx-1_en.pdf" H 4500 2100 50  0001 C CNN
	1    4500 2100
	-1   0    0    -1  
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5BD13B6B
P 5050 2100
AR Path="/5BCFDB7D/5BD13B6B" Ref="C?"  Part="1" 
AR Path="/5BD13B6B" Ref="C11"  Part="1" 
F 0 "C11" H 4950 2250 50  0000 C CNN
F 1 "1uF" H 4950 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5050 2100 50  0001 C CNN
F 3 "" H 5050 2100 50  0001 C CNN
	1    5050 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 7400 4300 7500
Wire Wire Line
	4300 7300 4300 7400
Connection ~ 4300 7400
Wire Wire Line
	3000 6300 3100 6300
Wire Wire Line
	3100 6500 3000 6500
Wire Wire Line
	3100 6200 3000 6200
Wire Wire Line
	4300 5850 4300 6000
Wire Wire Line
	3000 6800 3100 6800
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M0_Adalogger-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #GND03
U 1 0 5BD3CC5B
P 4300 7600
F 0 "#GND03" H 4300 7600 50  0001 C CNN
F 1 "GND" H 4200 7500 59  0000 L BNN
F 2 "" H 4300 7600 50  0001 C CNN
F 3 "" H 4300 7600 50  0001 C CNN
	1    4300 7600
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M0_Adalogger-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V07
U 1 0 5BD3CC61
P 4300 5750
F 0 "#+3V07" H 4300 5750 50  0001 C CNN
F 1 "+3V3" H 4200 5800 59  0000 L BNN
F 2 "" H 4300 5750 50  0001 C CNN
F 3 "" H 4300 5750 50  0001 C CNN
	1    4300 5750
	-1   0    0    -1  
$EndComp
Text Notes 3200 5650 0    79   ~ 0
MICROSD CARD
$Comp
L SAM32-rescue:503182-1853-503182-1853-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue J3
U 1 1 5BD3CC6D
P 3700 6700
F 0 "J3" H 3700 7667 50  0000 C CNN
F 1 "5031821852" H 3700 7576 50  0000 C CNN
F 2 "503182-1853:MOLEX_503182-1853" H 3700 6700 50  0001 L BNN
F 3 "Molex, LLC" H 3700 6700 50  0001 L BNN
F 4 "Conn Micro SD Card SKT 8 POS 1.09mm Solder RA SMD Embossed T/R 0.5A/Contact" H 3700 6700 50  0001 L BNN "Field4"
F 5 "5031821852" H 3700 6700 50  0001 L BNN "Field5"
F 6 "None" H 3700 6700 50  0001 L BNN "Field6"
F 7 "None" H 3700 6700 50  0001 L BNN "Field7"
F 8 "Unavailable" H 3700 6700 50  0001 L BNN "Field8"
	1    3700 6700
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M0_Adalogger-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #GND?
U 1 0 5BD44DCD
P 1950 5700
AR Path="/5BD3B1CE/5BD44DCD" Ref="#GND?"  Part="1" 
AR Path="/5BD44DCD" Ref="#GND01"  Part="1" 
F 0 "#GND01" H 1950 5700 50  0001 C CNN
F 1 "GND" H 1850 5600 59  0000 L BNN
F 2 "" H 1950 5700 50  0001 C CNN
F 3 "" H 1950 5700 50  0001 C CNN
	1    1950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4750 1650 4850
Text Label 5000 3400 0    59   ~ 0
DTR
Text Label 5000 3500 0    59   ~ 0
~RTS
Text Label 2850 5050 0    50   ~ 0
USB+
Text Label 2850 4950 0    50   ~ 0
USB-
Wire Wire Line
	4300 3800 4400 3800
Wire Wire Line
	4300 3600 4400 3600
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5BD13B45
P 4400 950
AR Path="/5BCFDB7D/5BD13B45" Ref="#+3V?"  Part="1" 
AR Path="/5BD13B45" Ref="#+3V04"  Part="1" 
F 0 "#+3V04" H 4400 950 50  0001 C CNN
F 1 "+3V3" H 4300 1000 59  0000 L BNN
F 2 "" H 4400 950 50  0001 C CNN
F 3 "" H 4400 950 50  0001 C CNN
	1    4400 950 
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
	4400 1500 4400 1050
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
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5C1A91F5
P 2550 950
AR Path="/5BCFDB7D/5C1A91F5" Ref="#+3V?"  Part="1" 
AR Path="/5C1A91F5" Ref="#+3V03"  Part="1" 
F 0 "#+3V03" H 2550 950 50  0001 C CNN
F 1 "+3V3" H 2400 1000 59  0000 L BNN
F 2 "" H 2550 950 50  0001 C CNN
F 3 "" H 2550 950 50  0001 C CNN
	1    2550 950 
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:SWITCH_TACT_SMT4.6X2.8-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue SW?
U 1 0 5BD0BFF9
P 1200 1500
AR Path="/5BCFDB7D/5BD0BFF9" Ref="SW?"  Part="1" 
AR Path="/5BD0BFF9" Ref="SW1"  Part="1" 
F 0 "SW1" H 1150 1350 42  0000 L BNN
F 1 "KMR231NG LFS" H 1125 1250 42  0000 L BNN
F 2 "Adafruit Feather M4 Express:BTN_KMR2_4.6X2.8" H 1200 1500 50  0001 C CNN
F 3 "https://www.ckswitches.com/media/1479/kmr2.pdf" H 1200 1500 50  0001 C CNN
	1    1200 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1000 1500 1000 1600
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
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C2A18C3
P 4350 5350
AR Path="/5BCFDB7D/5C2A18C3" Ref="#U$?"  Part="1" 
AR Path="/5C2A18C3" Ref="#U$07"  Part="1" 
F 0 "#U$07" H 4350 5350 50  0001 C CNN
F 1 "GND" H 4250 5250 59  0000 L BNN
F 2 "" H 4350 5350 50  0001 C CNN
F 3 "" H 4350 5350 50  0001 C CNN
	1    4350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4000 4300 4000
Wire Wire Line
	4300 4100 4700 4100
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5C3CBE48
P 1100 2300
AR Path="/5BCFDB7D/5C3CBE48" Ref="C?"  Part="1" 
AR Path="/5C3CBE48" Ref="C13"  Part="1" 
F 0 "C13" V 1010 2349 50  0000 C CNN
F 1 "22pF" V 950 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1100 2300 50  0001 C CNN
F 3 "" H 1100 2300 50  0001 C CNN
	1    1100 2300
	0    1    -1   0   
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5C3CBE4F
P 1100 2600
AR Path="/5BCFDB7D/5C3CBE4F" Ref="C?"  Part="1" 
AR Path="/5C3CBE4F" Ref="C14"  Part="1" 
F 0 "C14" V 1010 2649 50  0000 C CNN
F 1 "22pF" V 950 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1100 2600 50  0001 C CNN
F 3 "" H 1100 2600 50  0001 C CNN
	1    1100 2600
	0    1    -1   0   
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C3CBE5C
P 1000 3000
AR Path="/5BCFDB7D/5C3CBE5C" Ref="#U$?"  Part="1" 
AR Path="/5C3CBE5C" Ref="#U$03"  Part="1" 
F 0 "#U$03" H 1000 3000 50  0001 C CNN
F 1 "GND" H 900 2900 59  0000 L BNN
F 2 "" H 1000 3000 50  0001 C CNN
F 3 "" H 1000 3000 50  0001 C CNN
	1    1000 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 2600 1550 2400
Wire Wire Line
	1550 2400 3100 2400
Wire Wire Line
	1000 2300 1000 2600
Text Label 2850 5150 0    50   ~ 0
LED1
Text Notes 850  4600 0    79   ~ 0
USB CONN.
Wire Wire Line
	3100 1950 2450 1950
Wire Wire Line
	2450 1950 2450 1500
Wire Wire Line
	2450 1200 2550 1200
Connection ~ 2550 1200
Wire Wire Line
	2550 1200 2650 1200
NoConn ~ 15350 18150
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5CCC6F9B
P 10700 950
AR Path="/5BCFDB7D/5CCC6F9B" Ref="#+3V?"  Part="1" 
AR Path="/5CCC6F9B" Ref="#+3V06"  Part="1" 
F 0 "#+3V06" H 10700 950 50  0001 C CNN
F 1 "+3V3" H 10550 1000 59  0000 L BNN
F 2 "" H 10700 950 50  0001 C CNN
F 3 "" H 10700 950 50  0001 C CNN
	1    10700 950 
	-1   0    0    -1  
$EndComp
Connection ~ 4850 1500
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5CDFD672
P 5250 2300
AR Path="/5BCFDB7D/5CDFD672" Ref="#U$?"  Part="1" 
AR Path="/5CDFD672" Ref="#U$08"  Part="1" 
F 0 "#U$08" H 5250 2300 50  0001 C CNN
F 1 "GND" H 5150 2200 59  0000 L BNN
F 2 "" H 5250 2300 50  0001 C CNN
F 3 "" H 5250 2300 50  0001 C CNN
	1    5250 2300
	-1   0    0    -1  
$EndComp
Text Notes 4650 1400 0    59   ~ 0
DECOUPLING\n
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BD0C029
P 9700 1700
AR Path="/5BCFDB7D/5BD0C029" Ref="#U$?"  Part="1" 
AR Path="/5BD0C029" Ref="#U$015"  Part="1" 
F 0 "#U$015" H 9700 1700 50  0001 C CNN
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
	7950 1300 8250 1300
Wire Wire Line
	7950 1300 7950 1050
Connection ~ 9450 2550
NoConn ~ 10300 2750
NoConn ~ 3100 6600
NoConn ~ 3100 6700
NoConn ~ 3100 7000
NoConn ~ 3100 7100
Text Notes 5450 4900 0    79   ~ 0
WROOM ESP32
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5BDA8860
P 1950 2500
AR Path="/5BCFDB7D/5BDA8860" Ref="#+3V?"  Part="1" 
AR Path="/5BDA8860" Ref="#+3V02"  Part="1" 
F 0 "#+3V02" H 1950 2500 50  0001 C CNN
F 1 "+3V3" H 1800 2500 59  0000 L BNN
F 2 "" H 1950 2500 50  0001 C CNN
F 3 "" H 1950 2500 50  0001 C CNN
	1    1950 2500
	1    0    0    -1  
$EndComp
Text Label 2850 2300 0    60   ~ 0
XTAL1
Text Label 2850 2400 0    60   ~ 0
XTAL2
Text Notes 2250 3950 0    59   ~ 0
PCCD0
Text Notes 2250 4050 0    59   ~ 0
PCCD1
Text Notes 2250 4150 0    59   ~ 0
PCCD2
Text Notes 2250 4250 0    59   ~ 0
PCCD3
Text Notes 2250 4350 0    59   ~ 0
PCCD4
Text Notes 2250 4450 0    59   ~ 0
PCCD5
Text Notes 2250 4550 0    59   ~ 0
PCCD6
Text Notes 2250 4650 0    59   ~ 0
PCCD7
Text Notes 5000 4150 0    59   ~ 0
UART\nCOM5
Text Notes 2150 4450 1    59   ~ 0
(CAMERA INTERFACE)
Wire Notes Line
	5250 4150 4000 4150
Wire Notes Line
	4000 4150 4000 3950
Text Notes 2250 3700 0    59   ~ 0
PCCCLK
Wire Wire Line
	3100 3700 3000 3700
Text Notes 2250 3600 0    59   ~ 0
PCCDEN2
Text Notes 2250 3500 0    59   ~ 0
PCCDEN1
Wire Wire Line
	3000 4100 3100 4100
Wire Wire Line
	3100 4200 3000 4200
Wire Wire Line
	3100 4300 3000 4300
Wire Wire Line
	3100 4400 3000 4400
Wire Wire Line
	3100 4500 3000 4500
Wire Wire Line
	3100 4600 3000 4600
Wire Wire Line
	3100 3500 3000 3500
Wire Wire Line
	3100 3600 3000 3600
Wire Notes Line
	2900 3400 2900 3450
Wire Notes Line
	2900 3450 3400 3450
Wire Notes Line
	3400 3450 3400 4700
Wire Notes Line
	3400 4700 1950 4700
Wire Notes Line
	1950 3400 2900 3400
Text Notes 3850 4000 0    35   ~ 0
TC6
Text Notes 3850 4100 0    35   ~ 0
TC6
Wire Wire Line
	3000 2800 3100 2800
Wire Wire Line
	3100 2500 3000 2500
Wire Wire Line
	1400 2300 3100 2300
Wire Wire Line
	1400 2600 1550 2600
Text GLabel 3000 2500 0    59   BiDi ~ 0
DAC0
Text GLabel 3000 2800 0    59   BiDi ~ 0
DAC1
Text Notes 3850 3600 0    35   ~ 0
TC4
Text Notes 3850 3700 0    35   ~ 0
TC4
Wire Wire Line
	3100 3900 3000 3900
Wire Wire Line
	3100 4000 3000 4000
Text Notes 4950 3800 0    59   ~ 0
SPI\nCOM4
Wire Notes Line
	5250 3850 4000 3850
Wire Notes Line
	4000 3850 4000 3550
Wire Notes Line
	4000 3550 5250 3550
Text GLabel 4400 3600 2    59   Output ~ 0
MOSI
Text GLabel 4400 3800 2    59   Input ~ 0
MISO
Text GLabel 4400 3700 2    59   Output ~ 0
SCK
Wire Notes Line
	5250 3550 5250 3850
Wire Wire Line
	4300 2800 4400 2800
Wire Wire Line
	4300 2900 4400 2900
Wire Wire Line
	4300 3000 4400 3000
Wire Wire Line
	4300 3100 4400 3100
Wire Wire Line
	3100 3100 3000 3100
Wire Wire Line
	3100 3200 3000 3200
Text GLabel 3000 3100 0    59   BiDi ~ 0
SDA
Text GLabel 3000 3200 0    59   BiDi ~ 0
SCL
NoConn ~ 1650 5150
Connection ~ 1400 2300
Wire Wire Line
	1300 2600 1400 2600
Wire Wire Line
	1300 2300 1400 2300
Wire Notes Line
	5250 3950 5250 4150
Text GLabel 3000 6200 0    59   Output ~ 0
SCK
Text GLabel 3000 6300 0    59   Output ~ 0
MOSI
Text GLabel 3000 6500 0    59   Input ~ 0
MISO
Text GLabel 3000 6800 0    59   Input ~ 0
SD_CS
Text Notes 7850 4850 0    59   ~ 0
ESP\nJTAG
Wire Notes Line
	8200 4600 8200 4900
Wire Wire Line
	7250 5450 7150 5450
$Comp
L Device:R_US R3
U 1 1 5C02C9DB
P 1700 2750
F 0 "R3" H 1800 2850 50  0000 C CNN
F 1 "100K" H 1850 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1740 2740 50  0001 C CNN
F 3 "~" H 1700 2750 50  0001 C CNN
	1    1700 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 5C02CA8D
P 2650 1350
F 0 "R10" H 2750 1400 50  0000 C CNN
F 1 "10K" H 2750 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2690 1340 50  0001 C CNN
F 3 "~" H 2650 1350 50  0001 C CNN
	1    2650 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5C02CBCA
P 8150 1650
F 0 "R7" H 8000 1700 50  0000 C CNN
F 1 "1K" H 8000 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8190 1640 50  0001 C CNN
F 3 "~" H 8150 1650 50  0001 C CNN
	1    8150 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5C042500
P 9250 2650
F 0 "R4" V 9350 2600 50  0000 C CNN
F 1 "10K" V 9450 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9290 2640 50  0001 C CNN
F 3 "~" H 9250 2650 50  0001 C CNN
	1    9250 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5C042846
P 9350 1550
F 0 "R6" H 9350 1750 50  0000 C CNN
F 1 "10K" H 9300 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9390 1540 50  0001 C CNN
F 3 "~" H 9350 1550 50  0001 C CNN
	1    9350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1900 8150 1800
Wire Wire Line
	8900 2550 9100 2550
Wire Wire Line
	9100 2650 9100 2550
Connection ~ 9100 2550
Wire Wire Line
	9100 2550 9450 2550
$Comp
L Device:R_US R9
U 1 1 5C06E313
P 2450 1350
F 0 "R9" H 2300 1400 50  0000 C CNN
F 1 "10K" H 2300 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2490 1340 50  0001 C CNN
F 3 "~" H 2450 1350 50  0001 C CNN
	1    2450 1350
	1    0    0    -1  
$EndComp
Connection ~ 2450 1500
Wire Wire Line
	2550 1050 2550 1200
$Comp
L Device:R_US R5
U 1 1 5C08F158
P 1550 2900
F 0 "R5" V 1450 2900 50  0000 C CNN
F 1 "100K" V 1650 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1590 2890 50  0001 C CNN
F 3 "~" H 1550 2900 50  0001 C CNN
	1    1550 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 1800 5050 1800
Wire Wire Line
	4300 4200 4400 4200
Wire Wire Line
	4300 4300 4400 4300
Wire Wire Line
	4300 4400 4400 4400
Wire Wire Line
	4300 4500 4400 4500
Wire Wire Line
	4300 2700 4400 2700
Wire Wire Line
	3100 3300 3000 3300
Wire Wire Line
	3000 3400 3100 3400
Text GLabel 4400 2900 2    59   BiDi ~ 0
AIN7
Text GLabel 4400 2800 2    59   BiDi ~ 0
AIN6
Text GLabel 4400 3100 2    59   BiDi ~ 0
AIN9
Text GLabel 4400 3000 2    59   BiDi ~ 0
AIN8
Text Notes 4700 3100 0    59   ~ 0
ADC1
Text GLabel 3000 3300 0    60   BiDi ~ 0
D19
Text GLabel 3000 3400 0    60   BiDi ~ 0
D20
Text GLabel 3000 3600 0    60   BiDi ~ 0
RX
Text GLabel 3000 3500 0    60   BiDi ~ 0
TX
Text GLabel 3000 3700 0    60   BiDi ~ 0
D31
Text GLabel 3000 3900 0    60   BiDi ~ 0
D35
Text GLabel 3000 4000 0    60   BiDi ~ 0
D36
Text GLabel 3000 4100 0    60   BiDi ~ 0
D37
Text GLabel 3000 4200 0    60   BiDi ~ 0
D38
Text GLabel 3000 4300 0    60   BiDi ~ 0
D41
Text GLabel 3000 4400 0    60   BiDi ~ 0
D42
Text GLabel 3000 4500 0    60   BiDi ~ 0
D43
Text GLabel 3000 4600 0    60   BiDi ~ 0
D44
Text GLabel 4400 4200 2    60   BiDi ~ 0
D49
Text GLabel 4400 4300 2    60   BiDi ~ 0
D50
Text GLabel 4400 4400 2    60   BiDi ~ 0
D59
Text GLabel 4400 4500 2    60   BiDi ~ 0
D60
Text GLabel 4400 2700 2    60   BiDi ~ 0
D64
Wire Notes Line
	4000 3950 5250 3950
Text Label 4400 2400 0    60   ~ 0
TMS
Text Notes 2950 1350 0    59   ~ 0
SAMD\nJTAG\n
Wire Notes Line
	3400 1650 2850 1650
Wire Notes Line
	2850 1650 2850 1100
Wire Notes Line
	2850 1100 3400 1100
Wire Notes Line
	3400 1100 3400 1650
Text Notes 7950 6750 0    79   ~ 16
SAMD51 +ESP32-WROOM + microSD
$Comp
L SAM32-rescue:ESP32_WROOM32_SKINNY-Adafruit_HUZZAH32_ESP32_Feather-eagle-import-SAMD-10-rescue U3
U 1 1 5BD2F1EA
P 6050 5550
F 0 "U3" H 6050 5550 50  0001 C CNN
F 1 "ESP32_WROOM32_SKINNY" H 6050 5550 50  0001 C CNN
F 2 "Adafruit HUZZAH32 ESP32 Feather:WROOM32_SKINNY" H 6050 5550 50  0001 C CNN
F 3 "" H 6050 5550 50  0001 C CNN
	1    6050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 6350 7250 6350
Wire Wire Line
	7150 6250 7250 6250
Wire Wire Line
	7150 6150 7250 6150
Wire Wire Line
	7150 6050 7250 6050
Text GLabel 7250 6050 2    60   BiDi ~ 0
IO32
Text GLabel 7250 6150 2    60   BiDi ~ 0
IO33
Text GLabel 7250 6250 2    60   BiDi ~ 0
IO34
Text GLabel 7250 6350 2    60   BiDi ~ 0
IO35
Wire Wire Line
	7150 5250 7250 5250
Wire Wire Line
	7150 5650 7250 5650
Wire Wire Line
	7250 5350 7150 5350
Text GLabel 7250 5250 2    60   Output ~ 0
MOSI
Text GLabel 7250 5350 2    60   Input ~ 0
MISO
Text GLabel 7250 5550 2    60   Output ~ 0
SCL
Text GLabel 7250 5650 2    60   BiDi ~ 0
SDA
Wire Wire Line
	7150 5050 7250 5050
Wire Wire Line
	7150 5150 7250 5150
Text GLabel 7250 5050 2    60   BiDi ~ 0
IO16
Text GLabel 7250 5150 2    60   BiDi ~ 0
IO17
Text GLabel 7250 5450 2    60   BiDi ~ 0
IO21
Wire Wire Line
	7150 5750 7250 5750
Wire Wire Line
	7150 5850 7250 5850
Wire Wire Line
	7150 5950 7250 5950
Text GLabel 7250 5750 2    60   BiDi ~ 0
IO25
Text GLabel 7250 5850 2    60   BiDi ~ 0
IO26
Text GLabel 7250 5950 2    60   BiDi ~ 0
IO27
Wire Wire Line
	7650 4850 7850 4850
$Comp
L Device:R_US R16
U 1 1 5BD8D58A
P 7500 4750
F 0 "R16" V 7450 4600 50  0000 C CNN
F 1 "0" V 7450 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7540 4740 50  0001 C CNN
F 3 "~" H 7500 4750 50  0001 C CNN
	1    7500 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R17
U 1 1 5BD8D591
P 7500 4850
F 0 "R17" V 7450 4700 50  0000 C CNN
F 1 "0" V 7450 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7540 4840 50  0001 C CNN
F 3 "~" H 7500 4850 50  0001 C CNN
	1    7500 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 4950 7250 4950
Text GLabel 7250 4950 2    60   BiDi ~ 0
IO15
Wire Wire Line
	7150 4550 7250 4550
Text GLabel 7250 4550 2    60   BiDi ~ 0
SCK
Wire Wire Line
	7150 4450 7250 4450
Text GLabel 7250 4450 2    60   BiDi ~ 0
IO4
NoConn ~ 7150 4350
NoConn ~ 5150 5450
NoConn ~ 5150 5550
NoConn ~ 5150 5650
NoConn ~ 5150 5750
NoConn ~ 5150 5850
NoConn ~ 5150 5950
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5BEDF373
P 6050 3850
AR Path="/5BCFDB7D/5BEDF373" Ref="#+3V?"  Part="1" 
AR Path="/5BEDF373" Ref="#+3V05"  Part="1" 
F 0 "#+3V05" H 6050 3850 50  0001 C CNN
F 1 "+3V3" H 5950 3900 59  0000 L BNN
F 2 "" H 6050 3850 50  0001 C CNN
F 3 "" H 6050 3850 50  0001 C CNN
	1    6050 3850
	-1   0    0    -1  
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BEDF576
P 6050 6750
AR Path="/5BCFDB7D/5BEDF576" Ref="#U$?"  Part="1" 
AR Path="/5BEDF576" Ref="#U$09"  Part="1" 
F 0 "#U$09" H 6050 6750 50  0001 C CNN
F 1 "GND" H 5950 6650 59  0000 L BNN
F 2 "" H 6050 6750 50  0001 C CNN
F 3 "" H 6050 6750 50  0001 C CNN
	1    6050 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6050 5000 6050
Wire Wire Line
	5150 6150 5000 6150
Text GLabel 5000 6050 0    60   BiDi ~ 0
IO36
Text GLabel 5000 6150 0    60   BiDi ~ 0
IO39
Wire Wire Line
	7150 5550 7250 5550
Wire Wire Line
	4700 4350 4700 4100
$Comp
L SAM32-rescue:VBAT-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C269BEE
P 10200 950
AR Path="/5BCFDB7D/5C269BEE" Ref="#U$?"  Part="1" 
AR Path="/5C269BEE" Ref="#U$0101"  Part="1" 
F 0 "#U$0101" H 10200 950 50  0001 C CNN
F 1 "VBAT" H 10140 990 42  0000 L BNN
F 2 "" H 10200 950 50  0001 C CNN
F 3 "" H 10200 950 50  0001 C CNN
	1    10200 950 
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C269CFD
P 10200 1700
AR Path="/5BCFDB7D/5C269CFD" Ref="#U$?"  Part="1" 
AR Path="/5C269CFD" Ref="#U$0102"  Part="1" 
F 0 "#U$0102" H 10200 1700 50  0001 C CNN
F 1 "GND" H 10100 1600 59  0000 L BNN
F 2 "" H 10200 1700 50  0001 C CNN
F 3 "" H 10200 1700 50  0001 C CNN
	1    10200 1700
	1    0    0    -1  
$EndComp
Text Notes 9850 800  0    79   ~ 0
LIPO CONN.
Wire Wire Line
	7650 4750 7750 4750
Text Label 4400 2500 0    60   ~ 0
TCK
Text Label 4400 2600 0    60   ~ 0
TDI
$Comp
L 10118194-0001LF:10118194-0001LF J1
U 1 1 5BD4F36A
P 1150 5050
F 0 "J1" H 1100 5450 50  0000 C CNN
F 1 "10118194-0001LF" H 1050 5350 50  0000 C CNN
F 2 "custom-footprints:10118194-0001LF" H 1150 5050 50  0001 L BNN
F 3 "Amphenol FCI" H 1150 5050 50  0001 L BNN
F 4 "Micro Usb, 2.0 Type b, Rcpt, Smt" H 1150 5050 50  0001 L BNN "Field4"
F 5 "10118194-0001LF" H 1150 5050 50  0001 L BNN "Field5"
F 6 "None" H 1150 5050 50  0001 L BNN "Field6"
F 7 "None" H 1150 5050 50  0001 L BNN "Field7"
F 8 "Unavailable" H 1150 5050 50  0001 L BNN "Field8"
	1    1150 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 1500 1400 1500
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5BE0AD46
P 1000 1900
AR Path="/5BCFDB7D/5BE0AD46" Ref="#U$?"  Part="1" 
AR Path="/5BE0AD46" Ref="#U$0103"  Part="1" 
F 0 "#U$0103" H 1000 1900 50  0001 C CNN
F 1 "GND" H 900 1800 59  0000 L BNN
F 2 "" H 1000 1900 50  0001 C CNN
F 3 "" H 1000 1900 50  0001 C CNN
	1    1000 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1000 1600 1000 1800
Connection ~ 1000 1600
Wire Wire Line
	1400 1600 1400 1500
Connection ~ 1400 1500
Text Notes 1050 1250 0    59   ~ 0
RESET
Connection ~ 2050 1500
Wire Wire Line
	2050 1500 2450 1500
Wire Wire Line
	2050 2600 1950 2600
$Comp
L Device:R_US R11
U 1 1 5BE54B27
P 5800 3400
F 0 "R11" V 5850 3550 50  0000 C CNN
F 1 "10K" V 5850 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5840 3390 50  0001 C CNN
F 3 "~" H 5800 3400 50  0001 C CNN
	1    5800 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R12
U 1 1 5BE54BE6
P 5800 3500
F 0 "R12" V 5850 3650 50  0000 C CNN
F 1 "10K" V 5850 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5840 3490 50  0001 C CNN
F 3 "~" H 5800 3500 50  0001 C CNN
	1    5800 3500
	0    -1   -1   0   
$EndComp
Wire Notes Line
	6500 4900 6500 4600
Wire Notes Line
	6500 4600 8200 4600
Wire Notes Line
	6500 4900 8200 4900
Wire Wire Line
	9450 2450 9450 2550
Connection ~ 1700 2900
Text Notes 3850 2500 0    35   ~ 0
TC7
Text Notes 3850 2400 0    35   ~ 0
TC7
$Comp
L SAM32-rescue:ATSAMD51J20A-AU-ATSAMD51J20A-AU-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue U2
U 1 1 5BD7190E
P 3700 3300
F 0 "U2" H 3850 5350 50  0000 C CNN
F 1 "ATSAMD51J20A-AU" H 3850 5250 50  0000 C CNN
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
Wire Notes Line
	4000 3350 4950 3350
Wire Notes Line
	4950 3350 4950 2750
Wire Notes Line
	1950 3400 1950 4700
Text Notes 3800 4250 0    35   ~ 0
CAN Tx
Text Notes 3800 4350 0    35   ~ 0
CAN Rx
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5C0E1C57
P 4650 1700
AR Path="/5BCFDB7D/5C0E1C57" Ref="C?"  Part="1" 
AR Path="/5C0E1C57" Ref="C15"  Part="1" 
F 0 "C15" H 4600 1850 50  0000 C CNN
F 1 "0.1uF" H 4600 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4650 1700 50  0001 C CNN
F 3 "" H 4650 1700 50  0001 C CNN
	1    4650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1500 4850 1500
Wire Wire Line
	4850 1800 4650 1800
Connection ~ 4850 1800
Wire Wire Line
	4700 2000 4700 1900
Wire Wire Line
	4700 1900 4850 1900
Connection ~ 4700 2000
Wire Wire Line
	5050 2200 5250 2200
Connection ~ 4850 1900
Connection ~ 5050 2200
Wire Wire Line
	4850 2200 5050 2200
Wire Wire Line
	4850 1900 5050 1900
Wire Wire Line
	4850 1500 5050 1500
Connection ~ 5050 1500
Connection ~ 5050 1800
Wire Wire Line
	5050 1800 5250 1800
Wire Wire Line
	5050 1500 5250 1500
Connection ~ 4650 1500
Wire Wire Line
	4400 1500 4650 1500
$Comp
L SAM32-rescue:VUSB-power-SAMD-10-rescue #PWR0102
U 1 1 5BD4A1CD
P 1650 4750
F 0 "#PWR0102" H 1650 4600 50  0001 C CNN
F 1 "VUSB" H 1665 4923 50  0000 C CNN
F 2 "" H 1650 4750 50  0001 C CNN
F 3 "" H 1650 4750 50  0001 C CNN
	1    1650 4750
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:VUSB-power-SAMD-10-rescue #PWR0103
U 1 1 5BD4A8A9
P 7950 1050
F 0 "#PWR0103" H 7950 900 50  0001 C CNN
F 1 "VUSB" H 7965 1223 50  0000 C CNN
F 2 "" H 7950 1050 50  0001 C CNN
F 3 "" H 7950 1050 50  0001 C CNN
	1    7950 1050
	1    0    0    -1  
$EndComp
Text Label 7950 1300 0    60   ~ 0
VUSB
Wire Wire Line
	8050 2550 7950 2550
Wire Wire Line
	7950 2350 7950 2550
Wire Wire Line
	7950 2350 7950 1300
Connection ~ 7950 2350
Connection ~ 7950 1300
$Comp
L SAM32-rescue:MOUNTINGHOLE2.5-Adafruit_HUZZAH32_ESP32_Feather-eagle-import-SAMD-10-rescue J97
U 1 0 5BF2445F
P 6550 7500
F 0 "J97" H 6550 7500 50  0001 C CNN
F 1 "MOUNTINGHOLE2.5" H 6550 7500 50  0001 C CNN
F 2 "Adafruit HUZZAH32 ESP32 Feather:MOUNTINGHOLE_2.5_PLATED" H 6550 7500 50  0001 C CNN
F 3 "" H 6550 7500 50  0001 C CNN
	1    6550 7500
	0    -1   -1   0   
$EndComp
$Comp
L SAM32-rescue:MOUNTINGHOLE2.5-Adafruit_HUZZAH32_ESP32_Feather-eagle-import-SAMD-10-rescue J96
U 1 0 5BF244D2
P 6550 7250
F 0 "J96" H 6550 7250 50  0001 C CNN
F 1 "MOUNTINGHOLE2.5" H 6550 7250 50  0001 C CNN
F 2 "Adafruit HUZZAH32 ESP32 Feather:MOUNTINGHOLE_2.5_PLATED" H 6550 7250 50  0001 C CNN
F 3 "" H 6550 7250 50  0001 C CNN
	1    6550 7250
	0    -1   -1   0   
$EndComp
Connection ~ 5250 1800
Text Label 2000 2900 0    60   ~ 0
VBAT_MES
Text Label 9300 1400 0    10   ~ 0
PROG
$Comp
L Connector_Generic:Conn_01x17 J7
U 1 1 5BFAEBA9
P 9200 5050
F 0 "J7" H 9150 6000 50  0000 L CNN
F 1 "Conn_01x17" V 9350 4900 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x17_P2.54mm_Vertical" H 9200 5050 50  0001 C CNN
F 3 "~" H 9200 5050 50  0001 C CNN
	1    9200 5050
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:CON_JST_PH_2PINSH2-Adafruit_Feather_M0_Adalogger-eagle-import-SAMD-10-rescue J4
U 1 1 5BE0D3BF
P 10100 1400
F 0 "J4" H 10000 1220 59  0000 C CNN
F 1 "B2B-PH-SM4-TB" H 10000 1681 59  0001 C CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 10100 1400 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" H 10100 1400 50  0001 C CNN
	1    10100 1400
	-1   0    0    -1  
$EndComp
$Comp
L SAM32-rescue:NPPC_0.100in_2ROW-SMD_Headers-SAMD-10-rescue J5
U 1 1 5BEAAC6F
P 6550 1750
F 0 "J5" H 6547 2307 60  0000 C CNN
F 1 "NPTC072KFMS-RC" H 6547 2201 60  0000 C CNN
F 2 "custom-footprints:NPPC_0.100in_headers_2ROW" V 6600 1350 60  0001 C CNN
F 3 "https://drawings-pdf.s3.amazonaws.com/10488.pdf" V 6600 1350 60  0001 C CNN
	1    6550 1750
	1    0    0    -1  
$EndComp
Text GLabel 6200 1650 0    60   BiDi ~ 0
IO15
Text GLabel 6200 1550 0    60   BiDi ~ 0
IO17
Text GLabel 6200 1450 0    60   BiDi ~ 0
IO16
Wire Wire Line
	6200 1450 6300 1450
Text GLabel 6900 2050 2    60   BiDi ~ 0
IO4
Wire Wire Line
	6900 2050 6800 2050
Text GLabel 6900 1950 2    60   BiDi ~ 0
IO21
Wire Wire Line
	6900 1950 6800 1950
Wire Wire Line
	6200 1550 6300 1550
Wire Wire Line
	6200 1650 6300 1650
Text GLabel 6900 1850 2    60   BiDi ~ 0
IO36
Wire Wire Line
	6900 1850 6800 1850
Text GLabel 6900 1750 2    60   BiDi ~ 0
IO39
Wire Wire Line
	6800 1750 6900 1750
Text GLabel 6200 1750 0    60   BiDi ~ 0
IO34
Text GLabel 6900 1650 2    60   BiDi ~ 0
IO35
Wire Wire Line
	6300 1750 6200 1750
Wire Wire Line
	6900 1650 6800 1650
Text GLabel 6900 1550 2    60   BiDi ~ 0
IO25
Wire Wire Line
	6900 1550 6800 1550
Text GLabel 6200 1850 0    60   BiDi ~ 0
IO26
Wire Wire Line
	6200 1850 6300 1850
Text GLabel 8800 4650 0    60   BiDi ~ 0
D42
Text GLabel 8800 4250 0    60   BiDi ~ 0
D44
Wire Wire Line
	9000 4250 8800 4250
Wire Wire Line
	9000 4650 8800 4650
Text GLabel 8800 5250 0    59   Output ~ 0
SCK
Text GLabel 8800 5350 0    59   Output ~ 0
MOSI
Text GLabel 8800 5450 0    59   Input ~ 0
MISO
Wire Wire Line
	8800 5250 9000 5250
Wire Wire Line
	8800 5350 9000 5350
Wire Wire Line
	8800 5450 9000 5450
Text GLabel 10900 5450 2    60   Output ~ 0
SCL
Text GLabel 10900 5550 2    60   BiDi ~ 0
SDA
Wire Wire Line
	10900 5450 10800 5450
Wire Wire Line
	10900 5550 10650 5550
Wire Wire Line
	5250 1800 5250 2200
Connection ~ 5250 2200
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C1DDB0D
P 8750 4550
AR Path="/5BCFDB7D/5C1DDB0D" Ref="#U$?"  Part="1" 
AR Path="/5C1DDB0D" Ref="#U$0104"  Part="1" 
F 0 "#U$0104" H 8750 4550 50  0001 C CNN
F 1 "GND" H 8650 4450 59  0000 L BNN
F 2 "" H 8750 4550 50  0001 C CNN
F 3 "" H 8750 4550 50  0001 C CNN
	1    8750 4550
	0    1    -1   0   
$EndComp
Wire Wire Line
	8850 4550 9000 4550
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5C1F12C1
P 8750 4350
AR Path="/5BCFDB7D/5C1F12C1" Ref="#+3V?"  Part="1" 
AR Path="/5C1F12C1" Ref="#+3V0101"  Part="1" 
F 0 "#+3V0101" H 8750 4350 50  0001 C CNN
F 1 "+3V3" H 8600 4400 59  0000 L BNN
F 2 "" H 8750 4350 50  0001 C CNN
F 3 "" H 8750 4350 50  0001 C CNN
	1    8750 4350
	0    -1   1    0   
$EndComp
Wire Wire Line
	8850 4350 9000 4350
Text GLabel 10200 4450 2    60   BiDi ~ 0
D49
Text GLabel 10200 4750 2    60   BiDi ~ 0
D59
Text GLabel 10200 4850 2    60   BiDi ~ 0
D60
Wire Wire Line
	10200 4850 10050 4850
Text GLabel 10200 4950 2    60   BiDi ~ 0
D64
Text GLabel 10200 5150 2    59   BiDi ~ 0
AIN7
Text GLabel 10200 5350 2    59   BiDi ~ 0
AIN9
Text GLabel 10200 5250 2    59   BiDi ~ 0
AIN8
Wire Wire Line
	10200 4950 10050 4950
Text GLabel 10200 5050 2    59   BiDi ~ 0
DAC0
Text GLabel 10200 4650 2    59   BiDi ~ 0
DAC1
$Comp
L Connector_Generic:Conn_01x14 J2
U 1 1 5C2AA09B
P 9850 4850
F 0 "J2" H 9850 5600 50  0000 C CNN
F 1 "Conn_01x14" V 10000 4700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 9850 4850 50  0001 C CNN
F 3 "~" H 9850 4850 50  0001 C CNN
	1    9850 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 5050 10050 5050
Wire Wire Line
	10200 4750 10050 4750
Wire Wire Line
	10200 5150 10050 5150
Wire Wire Line
	10200 5250 10050 5250
Wire Wire Line
	10200 5350 10050 5350
Wire Wire Line
	10200 4450 10050 4450
Wire Wire Line
	10050 4650 10200 4650
$Comp
L SAM32-rescue:TESTPOINTPAD2MM-Adafruit_Feather_M4_Express-eagle-import-SAMD-10-rescue TP2
U 1 1 5C3CF7C0
P 2800 1600
F 0 "TP2" H 2700 1750 42  0000 R CNN
F 1 "TESTPOINTPAD2MM" H 2720 1733 42  0001 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2800 1600 50  0001 C CNN
F 3 "" H 2800 1600 50  0001 C CNN
	1    2800 1600
	-1   0    0    1   
$EndComp
$Comp
L SAM32-rescue:TESTPOINTPAD2MM-Adafruit_Feather_M4_Express-eagle-import-SAMD-10-rescue TP1
U 1 1 5C3CFA0E
P 2650 1600
F 0 "TP1" H 2850 1750 42  0000 R CNN
F 1 "TESTPOINTPAD2MM" H 2570 1733 42  0001 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2650 1600 50  0001 C CNN
F 3 "" H 2650 1600 50  0001 C CNN
	1    2650 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 1500 2650 1600
Wire Wire Line
	2650 1500 3100 1500
Connection ~ 2650 1500
Wire Wire Line
	2800 1600 3100 1600
Text Label 2850 1500 0    39   ~ 0
SWCLK
Text Label 2850 1600 0    39   ~ 0
SWDIO
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C6784F1
P 8900 5750
AR Path="/5BCFDB7D/5C6784F1" Ref="#U$?"  Part="1" 
AR Path="/5C6784F1" Ref="#U$0105"  Part="1" 
F 0 "#U$0105" H 8900 5750 50  0001 C CNN
F 1 "GND" H 8800 5650 59  0000 L BNN
F 2 "" H 8900 5750 50  0001 C CNN
F 3 "" H 8900 5750 50  0001 C CNN
	1    8900 5750
	0    1    -1   0   
$EndComp
$Comp
L SAM32-rescue:CAP_CERAMIC0603_NO-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue C?
U 1 0 5C6906A6
P 1800 5350
AR Path="/5BCFDB7D/5C6906A6" Ref="C?"  Part="1" 
AR Path="/5C6906A6" Ref="C8"  Part="1" 
F 0 "C8" H 1750 5500 50  0000 C CNN
F 1 "4.5 nF" H 1750 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1800 5350 50  0001 C CNN
F 3 "" H 1800 5350 50  0001 C CNN
	1    1800 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 5250 1950 5250
Wire Wire Line
	1950 5250 1950 5600
$Comp
L Device:R_US R8
U 1 1 5C6BD422
P 1650 5400
F 0 "R8" H 1750 5350 50  0000 C CNN
F 1 "1M" H 1750 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1690 5390 50  0001 C CNN
F 3 "~" H 1650 5400 50  0001 C CNN
	1    1650 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 5250 1800 5250
Connection ~ 1650 5250
Connection ~ 1800 5250
Wire Wire Line
	1250 5600 1650 5600
Wire Wire Line
	1650 5600 1650 5550
Wire Wire Line
	1650 5600 1800 5600
Wire Wire Line
	1800 5600 1800 5550
Connection ~ 1650 5600
$Comp
L Device:Crystal X1
U 1 1 5C84B658
P 1400 2450
F 0 "X1" V 1700 2400 50  0000 L CNN
F 1 "ST3215SB" V 1600 2250 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_MicroCrystal_CC7V-T1A-2Pin_3.2x1.5mm" H 1400 2450 50  0001 C CNN
F 3 "https://global.kyocera.com/prdct/electro/product/pdf/st3215sb_e.pdf" H 1400 2450 50  0001 C CNN
F 4 "32.768" V 1400 2450 39  0000 C CNN "Freq"
	1    1400 2450
	0    -1   -1   0   
$EndComp
Connection ~ 1000 2600
Wire Wire Line
	1000 2600 1000 2900
Connection ~ 1400 2600
Wire Wire Line
	7950 2350 8150 2350
Wire Wire Line
	8150 2200 8150 2350
Connection ~ 8150 2350
Wire Wire Line
	8150 2350 9250 2350
Text Notes 6250 7100 0    79   ~ 0
MOUNTING\n  HOLES
Text Notes 8850 4000 0    79   ~ 0
THRU-HOLE HEADERS\n    (SAMD51 I/O)
Text Notes 5850 1100 0    79   ~ 0
SURFACE MOUNT HEADER\n      (ESP32 I/O)
Wire Wire Line
	2850 5150 3100 5150
Text Notes 2050 4700 1    59   ~ 0
PARALLEL CAPTURE CONTROL
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C043D7B
P 9350 1800
AR Path="/5BCFDB7D/5C043D7B" Ref="#U$?"  Part="1" 
AR Path="/5C043D7B" Ref="#U$0106"  Part="1" 
F 0 "#U$0106" H 9350 1800 50  0001 C CNN
F 1 "GND" H 9250 1700 59  0000 L BNN
F 2 "" H 9350 1800 50  0001 C CNN
F 3 "" H 9350 1800 50  0001 C CNN
	1    9350 1800
	1    0    0    -1  
$EndComp
Connection ~ 9350 1700
Wire Wire Line
	4300 3700 4400 3700
Wire Wire Line
	4800 4450 4900 4450
Wire Wire Line
	4800 4000 4800 4450
Wire Wire Line
	4700 4350 5150 4350
$Comp
L LED:WS2812B D2
U 1 1 5C0F5F1A
P 1150 3800
F 0 "D2" H 1494 3846 50  0000 L CNN
F 1 "WS2812B" H 1350 3500 50  0000 L CNN
F 2 "custom-footprints:LED3535" H 1200 3500 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1250 3425 50  0001 L TNN
	1    1150 3800
	-1   0    0    -1  
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C13A6A2
P 1150 4200
AR Path="/5BCFDB7D/5C13A6A2" Ref="#U$?"  Part="1" 
AR Path="/5C13A6A2" Ref="#U$0107"  Part="1" 
F 0 "#U$0107" H 1150 4200 50  0001 C CNN
F 1 "GND" H 1050 4100 59  0000 L BNN
F 2 "" H 1150 4200 50  0001 C CNN
F 3 "" H 1150 4200 50  0001 C CNN
	1    1150 4200
	-1   0    0    -1  
$EndComp
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5C15136C
P 1150 3400
AR Path="/5BCFDB7D/5C15136C" Ref="#+3V?"  Part="1" 
AR Path="/5C15136C" Ref="#+3V0102"  Part="1" 
F 0 "#+3V0102" H 1150 3400 50  0001 C CNN
F 1 "+3V3" H 1000 3450 59  0000 L BNN
F 2 "" H 1150 3400 50  0001 C CNN
F 3 "" H 1150 3400 50  0001 C CNN
	1    1150 3400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5C24DD14
P 2850 5300
F 0 "R2" H 3100 5250 50  0000 C CNN
F 1 "2.2K" H 3050 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2890 5290 50  0001 C CNN
F 3 "~" H 2850 5300 50  0001 C CNN
	1    2850 5300
	-1   0    0    1   
$EndComp
$Comp
L SAM32-rescue:LED0805_NOOUTLINE-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue CHRG?
U 1 0 5C265087
P 2650 5450
AR Path="/5BCFDB7D/5C265087" Ref="CHRG?"  Part="1" 
AR Path="/5C265087" Ref="GRN1"  Part="1" 
F 0 "GRN1" H 2450 5600 42  0000 C CNN
F 1 "GREEN LED" H 2550 5650 42  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2650 5450 50  0001 C CNN
F 3 "" H 2650 5450 50  0001 C CNN
	1    2650 5450
	-1   0    0    1   
$EndComp
$Comp
L SAM32-rescue:GND-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C2675DA
P 2400 5550
AR Path="/5BCFDB7D/5C2675DA" Ref="#U$?"  Part="1" 
AR Path="/5C2675DA" Ref="#U$0108"  Part="1" 
F 0 "#U$0108" H 2400 5550 50  0001 C CNN
F 1 "GND" H 2300 5450 59  0000 L BNN
F 2 "" H 2400 5550 50  0001 C CNN
F 3 "" H 2400 5550 50  0001 C CNN
	1    2400 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5450 2400 5450
Wire Wire Line
	10200 1050 10200 1300
Wire Wire Line
	10200 1400 10200 1600
Wire Wire Line
	4300 3500 5650 3500
Wire Wire Line
	6400 3500 6400 3950
Wire Wire Line
	5950 3500 6400 3500
Wire Wire Line
	4300 3400 5650 3400
Wire Wire Line
	6500 3400 6500 3950
Wire Wire Line
	5950 3400 6500 3400
$Comp
L Device:R_US R1
U 1 1 5C4971ED
P 4900 4300
F 0 "R1" H 4750 4350 50  0000 C CNN
F 1 "10K" H 4750 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4940 4290 50  0001 C CNN
F 3 "~" H 4900 4300 50  0001 C CNN
	1    4900 4300
	1    0    0    -1  
$EndComp
Connection ~ 4900 4450
Wire Wire Line
	4900 4450 5150 4450
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5C4986BA
P 4900 4050
AR Path="/5BCFDB7D/5C4986BA" Ref="#+3V?"  Part="1" 
AR Path="/5C4986BA" Ref="#+3V0103"  Part="1" 
F 0 "#+3V0103" H 4900 4050 50  0001 C CNN
F 1 "+3V3" H 4800 4100 59  0000 L BNN
F 2 "" H 4900 4050 50  0001 C CNN
F 3 "" H 4900 4050 50  0001 C CNN
	1    4900 4050
	-1   0    0    -1  
$EndComp
Text Notes 5300 3700 0    47   ~ 0
Hold DTR low during boot\nfor serial bootloader access
Wire Wire Line
	1400 2900 1000 2900
Connection ~ 1000 2900
Wire Wire Line
	1450 3800 3100 3800
Text Notes 1200 3550 0    79   ~ 0
NEOPIXEL
Wire Wire Line
	1700 2550 1700 2600
Wire Wire Line
	1700 2900 3100 2900
Wire Wire Line
	8350 2550 8900 2550
Wire Wire Line
	10050 4350 10600 4350
Wire Wire Line
	10600 4350 10600 4300
$Comp
L SAM32-rescue:VBAT-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-SAMD-10-rescue #U$?
U 1 0 5C736103
P 10600 4200
AR Path="/5BCFDB7D/5C736103" Ref="#U$?"  Part="1" 
AR Path="/5C736103" Ref="#U$0109"  Part="1" 
F 0 "#U$0109" H 10600 4200 50  0001 C CNN
F 1 "VBAT" H 10540 4240 42  0000 L BNN
F 2 "" H 10600 4200 50  0001 C CNN
F 3 "" H 10600 4200 50  0001 C CNN
	1    10600 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R15
U 1 1 5BD8D583
P 7500 4650
F 0 "R15" V 7450 4500 50  0000 C CNN
F 1 "0" V 7450 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7540 4640 50  0001 C CNN
F 3 "~" H 7500 4650 50  0001 C CNN
	1    7500 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 4650 7150 4650
Wire Wire Line
	7350 4750 7150 4750
Wire Wire Line
	7350 4850 7150 4850
Text Label 7850 4200 1    60   ~ 0
TMS
Text Label 7750 4200 1    60   ~ 0
TCK
Text Label 7650 4200 1    60   ~ 0
TDI
Wire Notes Line
	4000 2750 4000 3350
Wire Notes Line
	4000 2750 4950 2750
$Comp
L Device:R_US R13
U 1 1 5CBF9E86
P 10800 5300
F 0 "R13" V 10850 5450 50  0000 C CNN
F 1 "10K" V 10850 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10840 5290 50  0001 C CNN
F 3 "~" H 10800 5300 50  0001 C CNN
	1    10800 5300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R14
U 1 1 5CC3A8E9
P 10650 5400
F 0 "R14" V 10700 5550 50  0000 C CNN
F 1 "10K" V 10700 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10690 5390 50  0001 C CNN
F 3 "~" H 10650 5400 50  0001 C CNN
	1    10650 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10800 5450 10050 5450
Connection ~ 10800 5450
Connection ~ 10650 5550
Wire Wire Line
	10650 5550 10050 5550
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5CC920E4
P 10800 5050
AR Path="/5BCFDB7D/5CC920E4" Ref="#+3V?"  Part="1" 
AR Path="/5CC920E4" Ref="#+3V0104"  Part="1" 
F 0 "#+3V0104" H 10800 5050 50  0001 C CNN
F 1 "+3V3" H 10650 5100 59  0000 L BNN
F 2 "" H 10800 5050 50  0001 C CNN
F 3 "" H 10800 5050 50  0001 C CNN
	1    10800 5050
	1    0    0    -1  
$EndComp
$Comp
L SAM32-rescue:+3V3-Adafruit_Feather_M4_Express-eagle-import-lab64_SAM32-rescue-lab64_SAM32-rescue-SAMD-10-rescue #+3V?
U 1 0 5CC92D7A
P 10650 5150
AR Path="/5BCFDB7D/5CC92D7A" Ref="#+3V?"  Part="1" 
AR Path="/5CC92D7A" Ref="#+3V0105"  Part="1" 
F 0 "#+3V0105" H 10650 5150 50  0001 C CNN
F 1 "+3V3" H 10500 5200 59  0000 L BNN
F 2 "" H 10650 5150 50  0001 C CNN
F 3 "" H 10650 5150 50  0001 C CNN
	1    10650 5150
	1    0    0    -1  
$EndComp
Text Label 8550 2550 0    60   ~ 0
VIN
Text Label 10100 4550 0    60   ~ 0
VIN
Wire Wire Line
	10050 4550 10300 4550
Wire Wire Line
	3000 2700 3100 2700
Text GLabel 3000 2700 0    59   Input ~ 0
SD_CS
Wire Wire Line
	3100 3000 3000 3000
Text GLabel 3000 3000 0    60   BiDi ~ 0
D16
Wire Wire Line
	9000 5850 8900 5850
Text GLabel 8900 5850 0    60   BiDi ~ 0
D16
Wire Wire Line
	9000 5650 8900 5650
Wire Wire Line
	9000 5550 8900 5550
Text GLabel 8900 5550 0    60   BiDi ~ 0
RX
Text GLabel 8900 5650 0    60   BiDi ~ 0
TX
Wire Wire Line
	9000 5150 8800 5150
Wire Wire Line
	9000 5050 8800 5050
Wire Wire Line
	9000 4950 8800 4950
Wire Wire Line
	9000 4850 8800 4850
Text GLabel 8800 5150 0    60   BiDi ~ 0
D31
Text GLabel 8800 4850 0    60   BiDi ~ 0
D37
Text GLabel 8800 4950 0    60   BiDi ~ 0
D36
Text GLabel 8800 5050 0    60   BiDi ~ 0
D35
Wire Wire Line
	9000 4450 8800 4450
Text GLabel 8800 4450 0    60   BiDi ~ 0
D43
Text GLabel 4400 3300 2    60   BiDi ~ 0
IO36
Wire Wire Line
	4400 3300 4300 3300
Text GLabel 4400 3200 2    60   BiDi ~ 0
IO39
Wire Wire Line
	4300 3200 4400 3200
Wire Wire Line
	9000 4750 8800 4750
Text GLabel 8800 4750 0    60   BiDi ~ 0
D41
Wire Wire Line
	1650 5050 3100 5050
Wire Wire Line
	1650 4950 3100 4950
Wire Wire Line
	6300 2050 6200 2050
Text GLabel 6200 2050 0    60   BiDi ~ 0
TDI
Wire Wire Line
	6300 1950 6200 1950
Text GLabel 6200 1950 0    60   BiDi ~ 0
TMS
Wire Wire Line
	6800 1450 6900 1450
Text GLabel 6900 1450 2    60   BiDi ~ 0
TCK
Wire Wire Line
	4300 2400 6800 2400
Wire Wire Line
	4300 2600 6700 2600
Wire Wire Line
	4300 2500 6750 2500
Text Notes 3500 1150 0    79   ~ 0
SAMD51
Wire Wire Line
	7650 3400 6700 2600
Wire Wire Line
	7650 3400 7650 4650
Wire Wire Line
	7750 3350 6750 2500
Wire Wire Line
	7750 3350 7750 4750
Wire Wire Line
	7850 3300 6800 2400
Wire Wire Line
	7850 3300 7850 4850
$Comp
L Device:D_Schottky D1
U 1 1 5C948CB2
P 8200 2550
F 0 "D1" H 8200 2450 50  0000 C CNN
F 1 "RB550V" H 8200 2700 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 8200 2550 50  0001 C CNN
F 3 "~" H 8200 2550 50  0001 C CNN
	1    8200 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	10050 4250 10200 4250
Text GLabel 10200 4250 2    60   BiDi ~ 0
D38
$EndSCHEMATC
