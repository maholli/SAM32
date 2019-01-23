import time
import board
import busio
import adafruit_is31fl3731

# arrow pattern in bits; top row-> bottom row, 8 bits in each row
arrow = bytearray((0x08, 0x0c, 0xfe, 0xff, 0xfe, 0x0c, 0x08, 0x00, 0x00))

with busio.I2C(board.SCL, board.SDA) as i2c:
    # initial display using Feather CharlieWing LED 15 x 7
    display = adafruit_is31fl3731.CharlieWing(i2c)
    # uncomment line if you are using Adafruit 16x9 Charlieplexed PWM LED Matrix
    #display = adafruit_is31fl3731.Matrix(i2c)

    # first load the frame with the arrows; moves the arrow to the right in each
    # frame
    display.sleep(True) # turn display off while frames are updated
    for frame in range(8):
        display.frame(frame, show=False)
        display.fill(0)
        for y in range(display.height):
            row = arrow[y]
            for x in range(8):
                bit = 1 << (7-x) & row
                # display the pixel into selected frame with varying intensity
                if bit:
                    display.pixel(x + frame, y, frame**2 + 1)
    display.sleep(False)
    # now tell the display to show the frame one at time
    while True:
        for frame in range(8):
            display.frame(frame)
            time.sleep(.1)
