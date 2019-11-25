# general blink routine for neopixel
# should work on all boards with an "NEOPIXEL" pin defined in firmware
#
# M.Holliday

import time
import board, neopixel, digitalio

sd_cs        =   digitalio.DigitalInOut(board.xSDCS)
rts          =   digitalio.DigitalInOut(board.RTS)
dtr          =   digitalio.DigitalInOut(board.DTR)
sd_cs.direction        =  digitalio.Direction.OUTPUT
rts.direction          =  digitalio.Direction.OUTPUT
dtr.direction          =  digitalio.Direction.OUTPUT

sd_cs.value     = 1
rts.value       = 0
dtr.value       = 0

pixel = neopixel.NeoPixel(board.NEOPIXEL, 1, brightness=0.5, auto_write=False)

def wheel(pos):
    # Input a value 0 to 255 to get a color value.
    # The colours are a transition r - g - b - back to r.
    if pos < 0 or pos > 255:
        r = g = b = 0
    elif pos < 85:
        r = int(pos * 3)
        g = int(255 - pos*3)
        b = 0
    elif pos < 170:
        pos -= 85
        r = int(255 - pos*3)
        g = 0
        b = int(pos*3)
    else:
        pos -= 170
        r = 0
        g = int(pos*3)
        b = int(255 - pos*3)
    return (r, g, b)


def rainbow_cycle(wait):
    for j in range(255):
        pixel_index = (256 // 1) + j
        pixel[0] = wheel(pixel_index & 255)
        pixel.show()
        time.sleep(wait)

######################### MAIN LOOP ##############################
while True:
     rainbow_cycle(0.01)
