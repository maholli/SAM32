# SAM32


<p align="middle">
  <img width="600" src="https://github.com/maholli/SAM32/blob/master/references/board.jpg">
</p>

If you soldered a fresh SAMD51, then a UF2-compatible bootloader must first be flashed.
1.  flash [bootloader-SAM32_v2.bin](https://github.com/maholli/SAM32/blob/master/firmware/bootloader-SAM32_v2.bin) using JTAG via Atmel Studio 7 (or equivalent).
 * necessary JTAG connections: TCK, TDIO, GND, VREF
 * if atmel studio 7 reports "unable to halt CPU," click reset button twice in quick succession. and try to read the device signature again. keep trying this process until it doesn't encounter the error
```
if you corrupt the drive:
get drive to be recognized (but don't open any files on it)
open terminal and get into REPL (if possible)
>>> import storage
>>> storage.erase_filesystem()
```
2. Once you are able to put the board into bootloader mode (double tap reset button), it will present as a `SAM32BOOT` USB device. Drag the [firmware_v2a.uf2](https://github.com/maholli/SAM32/blob/master/firmware/firmware_v2a.uf2) file onto the drive and it will reboot upon successful upload.
3. Congratulations! You should now see a `CIRCUITPY` USB device. Copy [blink.py](https://github.com/maholli/SAM32/blob/master/firmware/blink.py) onto the USB drive and rename to "main.py" to run a simple blink routine. 

## if your board says `METROM4BOOT` rather than `SAM32BOOT`
1. drag [update-bootloader-SAM32_v2.uf2](https://github.com/maholli/SAM32/blob/master/firmware/update-bootloader-SAM32_v1.uf2) onto the drive while in bootloader mode, after it's complete, you may need to toggle the reset button in order for `SAM32BOOT` to present
2. Once you're able to see `SAM32BOOT`, drag [firmware_v2a.uf2](https://github.com/maholli/SAM32/blob/master/firmware/firmware_v1g.uf2), it should now automatically reset.

## programming the esp32
the SAMD51 can be used to program the ESP32 module with micropython as well! To do this, we're going to leverage (modified) [adafruit miniESPtool](https://github.com/adafruit/Adafruit_CircuitPython_miniesptool) and the SD card. (assuming circuitpython is already running on the SAMD51)
1. if applicable, unplug the SAM32 board from your computer
2. copy the contents of [esp32_firmware](https://github.com/maholli/SAM32/blob/master/firmware/esp32_firmware/) onto an SD card and insert into the SAM32 board.
3. plug the SAM32 board into your computer and the esp32 programming process will automatically begin. You can connect to the serial terminal to watch the  progress. **DO NOT REMOVE POWER** during programming, it can take up to 30 minutes!! (we should optimize this in the future)
4. the serial terminal will indicate when programming is finished by researching the end of the main.py script.
5. once programming is complete with no errors, copy [esp_talk.py](https://github.com/maholli/SAM32/blob/master/firmware/esp_talk.py) onto the CIRCUITPY drive and rename it to main.py (overwriting the previous main.py). 
6. with the serial terminal open, the sketch will now print the contents of the SD card, then power-on the esp32 and print its boot messages. (if you aren't able to open the serial terminal in time to see the messages, press Ctrl+D twice once in your terminal window)
7. after printing the boot messages, the esp32 will proceed to REPL mode, as indicated by the `>>>` prompt. Careful not to confuse this with the SAMD51 REPL prompt. Right now, the both prompts look the same but can be differentiated based on the header message right before the first `>>>`. 
8. you are now speaking to the esp32 THROUGH the SAMD51. Cool, huh? 
9. to test the esp32, try entering each line of the code below seperately into the esp32 REPL:
```
import network
ap_if = network.WLAN(network.AP_IF)
ap_if.active(True)
ap_if.config('all')
```
10. the esp32 should now be hosting an open wifi access-point named "ESP_XXXXX" (note it wont have internet access if you connect to it.)   
11. to learn more about the version of micropython running on the ESP32, see https://github.com/loboris/MicroPython_ESP32_psRAM_LoBo/wiki
