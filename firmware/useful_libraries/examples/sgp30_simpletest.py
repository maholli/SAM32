""" Example for using the SGP30 with CircuitPython and the Adafruit library"""

import time
import board
import busio
import adafruit_sgp30

i2c = busio.I2C(board.SCL, board.SDA, frequency=100000)

# Create library object on our I2C port
sgp30 = adafruit_sgp30.Adafruit_SGP30(i2c)

print("SGP30 serial #", [hex(i) for i in sgp30.serial])

sgp30.iaq_init()
sgp30.set_iaq_baseline(0x8973, 0x8aae)

elapsed_sec = 0

while True:
    print("co2eq = %d ppm \t tvoc = %d ppb" % (sgp30.co2eq, sgp30.tvoc))
    time.sleep(1)
    elapsed_sec += 1
    if elapsed_sec > 10:
        elapsed_sec = 0
        print("**** Baseline values: co2eq = 0x%x, tvoc = 0x%x"
              % (sgp30.baseline_co2eq, sgp30.baseline_tvoc))
