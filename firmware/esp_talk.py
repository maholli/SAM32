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

led.value = 0
rts.value = 1
dtr.value = 1


# SPI and SD card setup
try:
	spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
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

def espREPL():
	
	if uart.in_waiting: 
		try:
			data = uart.read()
			data_string = ''.join([chr(b) for b in data]) 
			print(data_string, end='')
		except:
			pass
	if supervisor.runtime.serial_bytes_available:
		call = input()
		if call == 'exit':
			print('=== exiting ESP32 REPL ===')
			return False
		uart.write(bytes(call, 'utf-8')+b'\x0d\x0a') #add CR+LF to end of call
		try:
			data = uart.read()
			data_string = ''.join([chr(b) for b in data])
			print(data_string, end='')
		except:
			pass
	return True

if SD_IN:
	print("Files on filesystem:")
	print("====================")
	print_directory("/sd")
	rts.value = 0
	time.sleep(0.1)
	rts.value = 1

######################### MAIN LOOP ##############################

#start UART to ESP32
uart = busio.UART(board.TX,board.RX, baudrate=115200, timeout=1)

while True: # runs forever
	
	print('\n=== entering ESP32 REPL ===\n')
	while espREPL(): 
		pass
	
	# do things not in ESP32 REPL
	
	
