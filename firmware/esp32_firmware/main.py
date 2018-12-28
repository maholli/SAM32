import time
import board
import busio, supervisor, os

from digitalio import DigitalInOut, Direction # pylint: disable=unused-import
import adafruit_miniesptool

print("ESP32 mini prog")



uart = busio.UART(board.D0, board.D1, baudrate=115200, timeout=1)
resetpin = DigitalInOut(board.RTS)
gpio0pin = DigitalInOut(board.DTR)




import adafruit_sdcard, storage
try:
    spi = busio.SPI(board.MISO, board.MOSI, board.SCK)
    cs = DigitalInOut(board.xSDCS)
    sdcard = adafruit_sdcard.SDCard(spi, cs)
    vfs = storage.VfsFat(sdcard)
    storage.mount(vfs, "/sd")
    SD_IN = True
except OSError:
    SD_IN = False
    print('\n---- No SD card found, proceeding without it ----\n')
    pass

# def print_directory(path, tabs=0):
#     for file in os.listdir(path):
#         stats = os.stat(path + "/" + file)
#         filesize = stats[6]
#         isdir = stats[0] & 0x4000
#         if filesize < 1000:
#             sizestr = str(filesize) + " by"
#         elif filesize < 1000000:
#             sizestr = "%0.1f KB" % (filesize / 1000)
#         else:
#             sizestr = "%0.1f MB" % (filesize / 1000000)
#         prettyprintname = ""
#         for _ in range(tabs):
#             prettyprintname += "   "
#         prettyprintname += file
#         if isdir:
#             prettyprintname += "/"
#         print('{0:<40} Size: {1:>10}'.format(prettyprintname, sizestr))
#         # recursively print directory contents
#         if isdir:
#             print_directory(path + "/" + file, tabs + 1)

# print_directory("/sd")

time.sleep(0.5)

esptool = adafruit_miniesptool.miniesptool(uart, gpio0pin, resetpin,
                                           flashsize=4*1024*1024)
esptool.debug = True

esptool.sync()
print("Synced")
print("Found:", esptool.chip_name)
if esptool.chip_name != "ESP32":
    raise RuntimeError("This example is for ESP32 only")
esptool.baudrate = 912600
# esptool.baudrate = 115200

print("MAC ADDR: ", [hex(i) for i in esptool.mac_addr])

esptool.flash_file('/sd/bootloader.bin', 0x1000)
esptool.flash_file('/sd/phy_init_data.bin', 0xf000)
esptool.flash_file('/sd/MicroPython.bin', 0x10000)
esptool.flash_file('/sd/partitions_mpy.bin', 0x8000)

esptool.reset()
time.sleep(0.5)