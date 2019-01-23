# MPR121 piano demo.
# Listens to the first 7 inputs of the MPR121 and plays a middle scale note
# when an input is touched.  Note only one note is played at a time!
# For use with microcontrollers or computers with PWM support only!
# Author: Tony DiCola
import time

import board
import busio
import pulseio

# Import MPR121 module.
import adafruit_mpr121


# Configure PWM buzzer and other state:
BUZZER_PIN = board.D9
TONE_ON_DUTY = 2**15   # Duty cycle of tone when turned on, a square wave.
TONE_OFF_DUTY = 0      # Duty cycle of tone when turned off, 0 or no signal.
NOTE_FREQS = [261,  # Input 0 = 261 hz = middle C
              294,  # Input 1 = middle D
              329,  # Input 2 = middle E
              349,  # Input 3 = middle F
              392,  # Input 4 = middle G
              440,  # Input 5 = middle A
              493,  # Input 6 = middle B
              0,    # Input 7 = nothing (set to a frequency in hertz!)
              0,    # Input 8
              0,    # Input 9
              0,    # Input 10
              0]    # Input 11


# Create I2C bus.
i2c = busio.I2C(board.SCL, board.SDA)

# Create MPR121 class.
mpr121 = adafruit_mpr121.MPR121(i2c)
# Note you can optionally change the address of the device:
#mpr121 = adafruit_mpr121.MPR121(i2c, address=0x91)

# Setup buzzer PWM output.
buzzer = pulseio.PWMOut(BUZZER_PIN, duty_cycle=TONE_OFF_DUTY, frequency=440,
                        variable_frequency=True)

# Main loop.
# First grab an initial touch state for all of the inputs.  The touched()
# function can quickly get the state of all input pins and returns them as a
# 12-bit value with a bit set to 1 for each appropriate input (i.e. bit 0 is
# input 0, bit 1 is input 1, etc.)
last = mpr121.touched()
while True:
    # Every loop iteration get an updated touch state and look to see if it
    # changed since the last iteration.
    current = mpr121.touched()
    if last != current:
        # Some pin changed, turn off playback and look for any touched pins.
        buzzer.duty_cycle = TONE_OFF_DUTY
        # Loop through all 12 inputs (0-11) and look at their bits in the
        # current touch state.  A bit that's set is touched!
        for i in range(12):
            if (1 << i) & current > 0:
                print('Input {} touched!'.format(i))
                # Grab the frequency for the associated pin and check that it's
                # not zero (unused).
                freq = NOTE_FREQS[i]
                if freq != 0:
                    # Pin with a specified frequency was touched, play the tone!
                    buzzer.frequency = NOTE_FREQS[i]
                    buzzer.duty_cycle = TONE_ON_DUTY
    # Update touch state and delay a bit before next loop iteration.
    last = current
    time.sleep(0.01)
