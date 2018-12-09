# SAM32_v1

import board, time, busio, supervisor, os, digitalio
import adafruit_sdcard, storage

# Setup pins
led = digitalio.DigitalInOut(board.LED)
rts = digitalio.DigitalInOut(board.RTS)
dtr = digitalio.DigitalInOut(board.DTR)
led.direction = digitalio.Direction.OUTPUT
rts.direction = digitalio.Direction.OUTPUT
dtr.direction = digitalio.Direction.OUTPUT

led.value = 1
rts.value = 1
dtr.value = 1

# UART setup
uart = busio.UART(board.D0,board.D1, baudrate=115200, timeout=500)

# SPI and SD card setup
try:
	spi = busio.SPI(board.MISO, board.MOSI, board.SCK)
	cs = digitalio.DigitalInOut(board.xSDCS)
	sdcard = adafruit_sdcard.SDCard(spi, cs)
	vfs = storage.VfsFat(sdcard)
	storage.mount(vfs, "/sd")
	SD_IN = True
except OSError:
	SD_IN = False
	print('\n---- No SD card found, proceeding without it ----\n')
	pass

startUP = True
test=[]


# Use the filesystem as normal! Our files are under /sd 
# This helper function will print the contents of the SD 
def print_directory(path, tabs=0):
    for file in os.listdir(path):
        stats = os.stat(path + "/" + file)
        filesize = stats[6]
        isdir = stats[0] & 0x4000
        if filesize < 1000:
            sizestr = str(filesize) + " by"
        elif filesize < 1000000:
            sizestr = "%0.1f KB" % (filesize / 1000)
        else:
            sizestr = "%0.1f MB" % (filesize / 1000000)
        prettyprintname = ""
        for _ in range(tabs):
            prettyprintname += "   "
        prettyprintname += file
        if isdir:
            prettyprintname += "/"
        print('{0:<40} Size: {1:>10}'.format(prettyprintname, sizestr))
        # recursively print directory contents
        if isdir:
            print_directory(path + "/" + file, tabs + 1)



######################### MAIN LOOP ##############################

while True:
	led.value = 1
	time.sleep(0.2)
	if startUP:
		time.sleep(1)
		if SD_IN:
			print("Files on filesystem:")
			print("====================")
			print_directory("/sd")
		rts.value = 0
		time.sleep(0.1)
		rts.value = 1
		startUP = False
	if uart.in_waiting:
		try:
			data = uart.read()
			data_string = ''.join([chr(b) for b in data])
			print(data_string)
			# uart.reset_input_buffer
		except:
			pass
	if supervisor.runtime.serial_bytes_available:
		call = input()
		# print('echo:',call)
		uart.write(call)
	led.value = 0
	time.sleep(0.2) # make bigger to slow down