# VC0706 image capture to local storage.
# You must wire up the VC0706 to a USB or hardware serial port.
# Primarily for use with Linux/Raspberry Pi but also can work with Mac/Windows

import time
import serial
import adafruit_vc0706

# Configuration:
IMAGE_FILE = 'image.jpg'  # Full path to file name to save captured image.
                          # Will overwrite!

# Create a serial connection for the VC0706 connection, speed is auto-detected.
# Update the serial port name to match the serial connection for the camera!
uart = serial.Serial("/dev/ttyUSB0", timeout=0.25)

# Setup VC0706 camera
vc0706 = adafruit_vc0706.VC0706(uart)

# Print the version string from the camera.
print('VC0706 version:')
print(vc0706.version)

# Set the baud rate to 115200 for fastest transfer (its the max speed)
vc0706.baudrate = 115200

# Set the image size.
vc0706.image_size = adafruit_vc0706.IMAGE_SIZE_640x480 # Or set IMAGE_SIZE_320x240 or
                                                       # IMAGE_SIZE_160x120
# Note you can also read the property and compare against those values to
# see the current size:
size = vc0706.image_size
if size == adafruit_vc0706.IMAGE_SIZE_640x480:
    print('Using 640x480 size image.')
elif size == adafruit_vc0706.IMAGE_SIZE_320x240:
    print('Using 320x240 size image.')
elif size == adafruit_vc0706.IMAGE_SIZE_160x120:
    print('Using 160x120 size image.')

# Take a picture.
print('Taking a picture in 3 seconds...')
time.sleep(3)
print('SNAP!')
if not vc0706.take_picture():
    raise RuntimeError('Failed to take picture!')

# Print size of picture in bytes.
frame_length = vc0706.frame_length
print('Picture size (bytes): {}'.format(frame_length))

# Open a file for writing (overwriting it if necessary).
# This will write 50 bytes at a time using a small buffer.
# You MUST keep the buffer size under 100!
print('Writing image: {}'.format(IMAGE_FILE), end='', flush=True)
stamp = time.monotonic()
with open(IMAGE_FILE, 'wb') as outfile:
    wcount = 0
    while frame_length > 0:
        t = time.monotonic()
        # Compute how much data is left to read as the lesser of remaining bytes
        # or the copy buffer size (32 bytes at a time).  Buffer size MUST be
        # a multiple of 4 and under 100.  Stick with 32!
        to_read = min(frame_length, 32)
        copy_buffer = bytearray(to_read)
        # Read picture data into the copy buffer.
        if vc0706.read_picture_into(copy_buffer) == 0:
            raise RuntimeError('Failed to read picture frame data!')
        # Write the data to SD card file and decrement remaining bytes.
        outfile.write(copy_buffer)
        frame_length -= 32
        # Print a dot every 2k bytes to show progress.
        wcount += 1
        if wcount >= 64:
            print('.', end='', flush=True)
            wcount = 0
print()
print('Finished in %0.1f seconds!' % (time.monotonic() - stamp))
