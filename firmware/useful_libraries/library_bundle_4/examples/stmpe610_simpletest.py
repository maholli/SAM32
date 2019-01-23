import busio
import board
import digitalio
from adafruit_stmpe610 import Adafruit_STMPE610_SPI

spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
cs = digitalio.DigitalInOut(board.D6)
st = Adafruit_STMPE610_SPI(spi, cs)

print("Go Ahead - Touch the Screen - Make My Day!")
while True:
    if not st.buffer_empty:
        print(st.read_data())
