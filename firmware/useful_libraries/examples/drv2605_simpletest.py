# Simple demo of the DRV2605 haptic feedback motor driver.
# Will play all 117 effects in order for about a half second each.
# Author: Tony DiCola
import time

import board
import busio

import adafruit_drv2605


# Initialize I2C bus and DRV2605 module.
i2c = busio.I2C(board.SCL, board.SDA)
drv = adafruit_drv2605.DRV2605(i2c)

# Main loop runs forever trying each effect (1-117).
# See table 11.2 in the datasheet for a list of all the effect names and IDs.
#   http://www.ti.com/lit/ds/symlink/drv2605.pdf
effect = 1
while True:
    print('Playing effect #{0}'.format(effect))
    drv.set_waveform(effect)  # Select the effect on slot 0.
    # Optionally you can assign effects to up to 7 different slots to combine
    # them in interesting ways.  Use the slot keyword and specify a slot 0 to 6
    # (0 is the default).
    #drv.set_waveform(effect, slot=1)
    drv.play()  # Play the effect.
    time.sleep(0.5)
    # Increment effect ID and wrap back around to 1.
    effect += 1
    if effect > 117:
        effect = 1
