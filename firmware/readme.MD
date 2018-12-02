# Firmware Instructions
If you soldered a fresh SAMD51, then a UF2-compatible bootloader must first be flashed.
1.  flash [bootloader.bin](https://github.com/maholli/SAM32/blob/master/firmware/bootloader.bin) using JTAG via Atmel Studio 7 (or equivalent).
  * necessary JTAG connections: TCK, TDIO, GND, VREF
2. Once you are able to put the board into bootloader mode (double tap reset button), it will present as a `METROM4BOOT` USB device. Drag the [firmware_v1c.uf2](https://github.com/maholli/SAM32/blob/master/firmware/firmware_v1c.uf2) file onto the drive and it will reboot upon successful upload.
3. Congratulations! You should now see a `CIRCUITPY` USB device. Copy [blink.py](https://github.com/maholli/SAM32/blob/master/firmware/blink.py) onto the USB drive and rename to "main.py" to run a simple blink routine.
