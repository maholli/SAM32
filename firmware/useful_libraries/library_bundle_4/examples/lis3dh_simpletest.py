import time
import board
import digitalio
import busio
import adafruit_lis3dh

# Hardware I2C setup. Use the CircuitPlayground built-in accelerometer if available;
# otherwise check I2C pins.
if hasattr(board, 'ACCELEROMETER_SCL'):
    i2c = busio.I2C(board.ACCELEROMETER_SCL, board.ACCELEROMETER_SDA)
    int1 = digitalio.DigitalInOut(board.ACCELEROMETER_INTERRUPT)
    lis3dh = adafruit_lis3dh.LIS3DH_I2C(i2c, address=0x19, int1=int1)
else:
    i2c = busio.I2C(board.SCL, board.SDA)
    int1 = digitalio.DigitalInOut(board.D6)  # Set to correct pin for interrupt!
    lis3dh = adafruit_lis3dh.LIS3DH_I2C(i2c, int1=int1)

# Hardware SPI setup:
# spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
# cs = digitalio.DigitalInOut(board.D5)  # Set to correct CS pin!
# int1 = digitalio.DigitalInOut(board.D6)  # Set to correct pin for interrupt!
# lis3dh = adafruit_lis3dh.LIS3DH_SPI(spi, cs, int1=int1)


# Set range of accelerometer (can be RANGE_2_G, RANGE_4_G, RANGE_8_G or RANGE_16_G).
lis3dh.range = adafruit_lis3dh.RANGE_2_G

# Loop forever printing accelerometer values
while True:
    # Read accelerometer values (in m / s ^ 2).  Returns a 3-tuple of x, y,
    # z axis values.  Divide them by 9.806 to convert to Gs.
    x, y, z = [value / adafruit_lis3dh.STANDARD_GRAVITY for value in lis3dh.acceleration]
    print("x = %0.3f G, y = %0.3f G, z = %0.3f G" % (x, y, z))
    # Small delay to keep things responsive but give time for interrupt processing.
    time.sleep(0.1)
