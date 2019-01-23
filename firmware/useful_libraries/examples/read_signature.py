"""
Read Signature Test - All this does is read the signature from the chip to
check connectivity!
"""

import board
import busio
import pulseio
import adafruit_avrprog

spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
avrprog = adafruit_avrprog.AVRprog()
avrprog.init(spi, board.D5)

# we can generate an 6 MHz clock for driving bare chips too!
clock_pwm = pulseio.PWMOut(board.D9, frequency=6000000, duty_cycle=65536//2)

avrprog.begin()
print("Signature bytes: ", [hex(i) for i in avrprog.read_signature()])
avrprog.end()
