# Firmware Instructions


If you soldered a fresh SAMD51, then a UF2-compatible bootloader must first be flashed.
1.  flash [bootloader-SAM32_v1.bin](https://github.com/maholli/SAM32/blob/master/firmware/bootloader-SAM32_v1.bin) using JTAG via Atmel Studio 7 (or equivalent).
 * necessary JTAG connections: TCK, TDIO, GND, VREF
 * if atmel studio 7 reports "unable to halt CPU," click reset button twice in quick succession. and try to read the device signature again. keep trying this process until it doesn't encounter the error
```
if you corrupt the drive:
get drive to be recognised (but don't open any files on it)
open terminal and get into REPL (if possible)
>>> import storage
>>> storage.erase_filesystem()
```
2. Once you are able to put the board into bootloader mode (double tap reset button), it will present as a `SAM32BOOT` USB device. Drag the [firmware_v1f.uf2](https://github.com/maholli/SAM32/blob/master/firmware/firmware_v1f.uf2) file onto the drive and it will reboot upon successful upload.
3. Congratulations! You should now see a `CIRCUITPY` USB device. Copy [blink.py](https://github.com/maholli/SAM32/blob/master/firmware/blink.py) onto the USB drive and rename to "main.py" to run a simple blink routine.

## if your board says `METROM4BOOT` rather than `SAM32BOOT`
1. drag [update-bootloader-SAM32_v1.uf2](https://github.com/maholli/SAM32/blob/master/firmware/update-bootloader-SAM32_v1.uf2) onto the drive while in bootloader mode, after it's complete, you may need to toggle the reset button in order for `SAM32BOOT` to present
2. Once you're able to see `SAM32BOOT`, drag [firmware_v1f.uf2](https://github.com/maholli/SAM32/blob/master/firmware/firmware_v1f.uf2), it should now automatically reset.
