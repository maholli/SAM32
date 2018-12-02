# general blink routine
# should work on all boards with an "LED" pin defined in firmware
#
# M.Holliday

import board
import time
from digitalio import DigitalInOut, Direction, Pull

# Built in LEDs
led = DigitalInOut(board.LED)
led.direction = Direction.OUTPUT


######################### MAIN LOOP ##############################
delay = 2
i = 0
while True:
  print(i)
  led.value = 1
  time.sleep(delay) # make bigger to slow down
  led.value = 0
  time.sleep(delay) # make bigger to slow down
  i += 1
