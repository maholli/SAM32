# Analog to digital converter example.
# Will loop forever printing ADC channel 1 raw and mV values every second.
# Open the serial port after running to see the output printed.
# NOTE the ADC can only read voltages in the range of ~900mV to 1200mV!
# Author: Tony DiCola
import time
import board
import busio
import adafruit_lis3dh


# Uncomment _one_ of the hardware setups below depending on your wiring:

# Hardware I2C setup:
i2c = busio.I2C(board.SCL, board.SDA)
lis3dh = adafruit_lis3dh.LIS3DH_I2C(i2c)

# Software I2C setup:
#import bitbangio
#i2c = bitbangio.I2C(board.SCL, board.SDA)
#lis3dh = adafruit_lis3dh.LIS3DH_I2C(i2c)

# Hardware SPI setup:
#import busio
#spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
#cs = busio.DigitalInOut(board.D6)  # Set to appropriate CS pin!
#lis3dh = adafruit_lis3dh.LIS3DH_SPI(spi, cs)


# Loop forever printing ADC readings.
while True:
    # Read raw ADC value.  Specify which ADC to read: 1, 2, or 3.
    adc1_raw = lis3dh.read_adc_raw(1)
    # Or read the ADC value in millivolts:
    adc1_mV = lis3dh.read_adc_mV(1)
    print('ADC 1 = {} ({} mV)'.format(adc1_raw, adc1_mV))
    time.sleep(1)
