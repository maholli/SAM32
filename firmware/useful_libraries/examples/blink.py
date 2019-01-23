import busio
import board
import adafruit_is31fl3731

# array pattern in bits; top row-> bottom row, 8 bits in each row
an_arrow = bytearray((0x08, 0x0c, 0xfe, 0xff, 0xfe, 0x0c, 0x08, 0x00, 0x00))

with busio.I2C(board.SCL, board.SDA) as i2c:
    # initial display using Feather CharlieWing LED 15 x 7
    display = adafruit_is31fl3731.CharlieWing(i2c)
    # uncomment line if you are using Adafruit 16x9 Charlieplexed PWM LED Matrix
    #display = adafruit_is31fl3731.Matrix(i2c)

    # first load the frame with the arrows; moves the an_arrow to the right in each
    # frame
    display.sleep(True) # turn display off while updating blink bits
    display.fill(50)
    for y in range(display.height):
        row = an_arrow[y]
        for x in range(8):
            bit = 1 << (7-x) & row
            if bit:
                display.pixel(x + 4, y, None, blink=True)

    display.blink(300) # ranges from 270 to 2159; smaller the number to faster blink
    display.sleep(False) # turn display on
