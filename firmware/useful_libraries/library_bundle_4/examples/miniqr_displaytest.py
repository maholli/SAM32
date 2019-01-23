import board
import pulseio
import displayio
import adafruit_miniqr

DISPLAY_W = 128
DISPLAY_H = 128

backlight = pulseio.PWMOut(board.TFT_BACKLIGHT)
backlight.duty_cycle = 0

def draw_QR(matrix):
    # how big each pixel is, add 2 blocks on either side
    BLOCK_SIZE = DISPLAY_W // (matrix.width+4)

    # Center the QR code in the middle of the screen
    X_OFFSET = (DISPLAY_W - BLOCK_SIZE * matrix.width) // 2
    Y_OFFSET = (DISPLAY_H - BLOCK_SIZE * matrix.height) // 2

    # monochome (2 color) palette
    palette = displayio.Palette(2)
    palette[0] = 0xFFFFFF
    palette[1] = 0x000000

    # bitmap the size of the screen, monochrome (2 colors)
    bitmap = displayio.Bitmap(DISPLAY_H, DISPLAY_W, 2)

    # raster the QR code
    line = bytearray(DISPLAY_W // 8)  # monochrome means 8 pixels per byte
    for y in range(matrix.height):    # each scanline in the height
        for i, _ in enumerate(line):    # initialize it to be empty
            line[i] = 0
        for x in range(matrix.width):
            if matrix[x, y]:
                for b in range(BLOCK_SIZE):
                    _x = X_OFFSET + x * BLOCK_SIZE + b
                    line[_x // 8] |= 1 << (7-(_x % 8))

        for b in range(BLOCK_SIZE):
            # load this line of data in, as many time as block size
            #pylint: disable=protected-access
            bitmap._load_row(Y_OFFSET + y*BLOCK_SIZE+b, line)

    # display the bitmap using our palette
    splash = displayio.Group()
    face = displayio.Sprite(bitmap, pixel_shader=palette, position=(0, 0))
    splash.append(face)
    board.DISPLAY.show(splash)
    board.DISPLAY.wait_for_frame()

qr = adafruit_miniqr.QRCode()
qr.add_data(b'https://www.adafruit.com/circuitpython')
qr.make()
draw_QR(qr.matrix)

# turn on backlight
backlight.duty_cycle = 35000

while True:
    pass
