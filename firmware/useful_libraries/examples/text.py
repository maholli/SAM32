import board
import busio
import framebuf
import adafruit_is31fl3731

buf = bytearray(32)

with busio.I2C(board.SCL, board.SDA) as i2c:
    # initial display using Feather CharlieWing LED 15 x 7
    display = adafruit_is31fl3731.CharlieWing(i2c)
    # uncomment line if you are using Adafruit 16x9 Charlieplexed PWM LED Matrix
    #display = adafruit_is31fl3731.Matrix(i2c)

    fb = framebuf.FrameBuffer(buf, display.width, display.height, framebuf.MONO_VLSB)
    text_to_show = "Adafruit!!"
    frame = 0 # start with frame 0
    while True:
        for i in range(len(text_to_show) * 9):
            fb.fill(0)
            fb.text(text_to_show, -i + display.width, 0)

            # to improve the display flicker we can use two frame
            # fill the next frame with scrolling text, then
            # show it.
            display.frame(frame, show=False)
            # turn all LEDs off
            display.fill(0)
            for x in range(display.width):
                # using the FrameBuffer text result
                bite = buf[x]
                for y in range(display.height):
                    bit = 1 << y & bite
                    # if bit > 0 then set the pixel brightness
                    if bit:
                        display.pixel(x, y, 50)

            # now that the frame is filled, show it.
            display.frame(frame, show=True)
            frame = 0 if frame else 1
