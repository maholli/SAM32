# SAM32
SAMD51 with M4 core serving as UART bridge to WROOM ESP32 + microSD card
<p align="middle">
  <img width="700" src="https://github.com/maholli/SAM32/blob/master/hardware/boadpics.jpg">
</p>

## Features
* Arduino / circuitpython / mircopython compatible
* USB native support, comes with USB bootloader and serial port debugging
* Additional USB debugging of ESP32 via JTAG emulation 
* 240 MHz dual core Tensilica LX6 microcontroller with 600 DMIPS (ESP32)
* 4 MB flash, 520 KB SRAM (ESP32)
* 512 KB flash, 192 KB SRAM (SAMD51)
* 802.11b/g/n HT40 Wi-Fi transceiver
* Dual mode Bluetooth (normal and BLE)
* **42 individually accessible I/O pins!**
* Dual 1 MSPS 12 bit true analog DAC (can be used to play 12-bit stereo audio clips)
* Dual 1 MSPS 12 bit ADC (10+ analog pins some on ADC0 and some on ADC1)
* 10 Hardware Serial, hardware I2C, hardware SPI support
* 20 x PWM outputs
* Dual I2S input and output
* 8-bit Parallel capture controller (for camera/video in)
* 10 x capacitive touch interface
* Hall sensor
* On-board PCB antenna
* micro SD card
* 3.3V regulator with 500mA peak current output
* Built in 100mA lipoly charger

## Interactive BOM
Through the magic of python and the [interactive BOM project](https://github.com/openscopeproject/InteractiveHtmlBom), you can now view the SAMD_10 BOM here: https://maholli.github.io/SAM32/






Inspired by many of the [adafruit boards](https://www.adafruit.com/feather)
