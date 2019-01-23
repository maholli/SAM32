import time

from board import SCL, SDA
import busio

import adafruit_CCS811

i2c_bus = busio.I2C(SCL, SDA)

ccs = adafruit_CCS811.CCS811(i2c_bus)

#wait for the sensor to be ready and calibrate the thermistor
while not ccs.data_ready:
    pass
temp = ccs.temperature
ccs.temp_offset = temp - 25.0

while True:
    print("CO2: ", ccs.eco2, " TVOC:", ccs.tvoc, " temp:", ccs.temperature)
    time.sleep(.5)
