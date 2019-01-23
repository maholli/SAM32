import displayio
import adafruit_imageload

image, palette = adafruit_imageload.load("images/4bit.bmp", bitmap=displayio.Bitmap, palette=displayio.Palette)
