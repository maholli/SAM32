import time

from board import SCL, SDA
import busio

import adafruit_ina219

i2c_bus = busio.I2C(SCL, SDA)

ina219 = adafruit_ina219.INA219(i2c_bus)

print("ina219 test")

while True:
    print("Bus Voltage:   {} V".format(ina219.bus_voltage))
    print("Shunt Voltage: {} mV".format(ina219.shunt_voltage / 1000))
    print("Load Voltage:  {} V".format(ina219.bus_voltage + ina219.shunt_voltage))
    print("Current:       {} mA".format(ina219.current))
    print("")

    time.sleep(2)
