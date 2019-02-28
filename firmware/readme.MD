# SAM32

<p align="middle">
  <img width="800" src="https://github.com/maholli/SAM32/blob/master/references/board.png">
</p>

## This board can be programmed with arduino or circuitpython (default).

* If you'd like to switch to arduino, plug it into your computer via USB, and quickly double-click the "RST" button. A new drive called SAM32BOOT will appear. You can now flash it normally using the Arduino IDE and choosing "Adafruit Feather M4" as the board.
* To switch back to circuitpython, put the board into SAM32BOOT mode again, and drag the [firmware_v2a.uf2](https://github.com/maholli/SAM32/blob/master/firmware/firmware_v2a.uf2) file onto the drive. It will automatically reset once the transfer is complete.

## Useful resources

* [Circuitpython libraries](https://github.com/maholli/SAM32/tree/master/firmware/useful_libraries)
* The [adafruit circuitpython playground page](https://learn.adafruit.com/adafruit-circuit-playground-express/circuitpython-playground) has a lot of good tutorials for doing basic microcontroller things in CP
* [Built-in "python" modules](https://circuitpython.readthedocs.io/en/latest/shared-bindings/index.html#modules) available in circuitpython
* [Helpful interactive BOM](https://maholli.github.io/SAM32/) for ease of assembly

## Accessing the serial console
Nearly any terminal program can communicate with the SAM32 (baud=112500, data=8 bit, parity=None, flow control=XON/XOFF). For example...

### MacOS
1. In terminal type: `ls /dev/tty.*`. The SAM32 will likely be listed as `/dev/tty.usbmodem_____`
2. Now enter: `screen /dev/tty.YOURBOARDNAMEHERE 115200`
3. You may or may not see a propmt, press <kbd>Ctrl</kbd>+<kbd>C</kbd> to halt the board
4. You can now enter the REPL by pressing any key, or hit <kbd>Ctrl</kbd>+<kbd>D</kbd> to reload the main.py
5. Exit screen at any time by pressing <kbd>Ctrl</kbd>+<kbd>A</kbd>+<kbd>\</kbd>

### Windows 
1. Windows doesn't have a built-in terminal program like MacOS. Personally, I like [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html), or [termite](https://www.compuphase.com/software_termite.htm). You can also use the arduino serial monitor if you'd like!
2. For something like PuTTY, set the Connection Type to Serial
3. Press the <kbd>Windows Key</kbd> and type device manager (select it)
4. In device manager, scroll down to "Ports (COM & LPT)" and expand it
5. Plug in, then unplug the SAM32 and notice the impacted "COM" port.
6. Return to PuTTY and enter "COM___" in the "Serial Line" field, and then click "Open"

## If you soldered a fresh SAMD51, then a UF2-compatible bootloader must first be flashed.
1.  flash [bootloader-SAM32_v2.bin](https://github.com/maholli/SAM32/blob/master/firmware/bootloader-SAM32_v2.bin) using JTAG via Atmel Studio 7 (or equivalent).
 * Necessary JTAG connections: TCK, TDIO, GND, VREF
 * If atmel studio 7 reports "unable to halt CPU," click reset button twice in quick succession. and try to read the device signature again. keep trying this process until it doesn't encounter the error
```
if you corrupt the drive:
get drive to be recognized (but don't open any files on it)
open terminal and get into REPL (if possible)
>>> import storage
>>> storage.erase_filesystem()
```
2. Once you are able to put the board into bootloader mode (double tap reset button), it will present as a `SAM32BOOT` USB device. Drag the [firmware_v2a.uf2](https://github.com/maholli/SAM32/blob/master/firmware/firmware_v2a.uf2) file onto the drive and it will reboot upon successful upload.
3. Congratulations! You should now see a `CIRCUITPY` USB device. Copy [blink.py](https://github.com/maholli/SAM32/blob/master/firmware/blink.py) onto the USB drive and rename to "main.py" to run a simple blink routine. 

## If your board says `METROM4BOOT` rather than `SAM32BOOT`

1. Drag [update-bootloader-SAM32_v2.uf2](https://github.com/maholli/SAM32/blob/master/firmware/update-bootloader-SAM32_v1.uf2) onto the drive while in bootloader mode, after it's complete, you may need to toggle the reset button in order for `SAM32BOOT` to present
2. Once you're able to see `SAM32BOOT`, drag [firmware_v2a.uf2](https://github.com/maholli/SAM32/blob/master/firmware/firmware_v1g.uf2), it should now automatically reset.

## Programming Micropython onto the esp32

The SAMD51 can be used to program the ESP32 module with micropython as well! To do this, we're going to leverage (modified) [adafruit miniESPtool](https://github.com/adafruit/Adafruit_CircuitPython_miniesptool) and the SD card. (assuming circuitpython is already running on the SAMD51)
1. If applicable, unplug the SAM32 board from your computer

2. Copy the contents of [esp32_firmware/sdcard](https://github.com/maholli/SAM32/blob/master/firmware/esp32_firmware/sdcard/) onto an SD card and insert into the SAM32 board.

3. Plug the SAM32 board into your computer and copy everything in [esp32_firmware](https://github.com/maholli/SAM32/blob/master/firmware/esp32_firmware/) onto the CIRCUITPY **except** the /sdcard/ directory. 

4. Now open the serial console and type:

   ```
   import esp_prog
   ```

   and then press the enter key. The esp32 programming process now begin. You can watch the progress in the terminal. **DO NOT REMOVE POWER** during programming, it can take up to 30 minutes!! (we can and should optimize this in the future)

5. The serial terminal will indicate when programming is finished by reaching the end of the main.py script.

6. Once programming is complete with no errors, copy [esp_talk.py](https://github.com/maholli/SAM32/blob/master/firmware/esp_talk.py) onto the CIRCUITPY drive and rename it to main.py (overwriting the previous main.py). 

7. With the serial terminal open, the sketch will now print the contents of the SD card, then power-on the esp32 and print its boot messages. (if you aren't able to open the serial terminal in time to see the messages, press Ctrl+D twice once you've able to get into your terminal window)

8. After printing the boot messages, the esp32 will proceed to REPL mode, as indicated by the `>>>` prompt. Careful not to confuse this with the SAMD51 REPL prompt. Right now, the both prompts look the same but can be differentiated based on the header message right before the first `>>>`. 

9. You are now speaking to the esp32 THROUGH the SAMD51. Cool, huh? 

10. To test the esp32, try entering each line of the code below seperately into the esp32 REPL:
```
import network
ap_if = network.WLAN(network.AP_IF)
ap_if.active(True)
ap_if.config('all')
```
10. The esp32 should now be hosting an open wifi access-point named "ESP_XXXXX" (note it wont have internet access if you connect to it.)   
11. To learn more about the version of micropython running on the ESP32, see https://github.com/loboris/MicroPython_ESP32_psRAM_LoBo/wiki

## Programming Arduino onto the esp32 

You can also program the ESP32 with arduino! We'll use the same method explained above, but substitute the binary files that were put on the SD card for arduino ones. 

### Preparing your arduino files (windows)

We start by compiling (verifying button) the arduino sketch.  When choosing pins and programming the ESP32, remember that the SAM32 really just has a WROOM32 module attached, so you can still use all the documentation and pinout information available online (like the pinout below):

<p align="middle">
  <img width="700" src="https://github.com/maholli/SAM32/blob/master/references/wroom_pinout.png">
</p>

1. Open arduino, go to File -> Preferences, and make sure you have the "compilation" and "upload" are box checked under "Show verbose output during..." Then click OK in the Preferences window.

2. **If you haven't programmed an ESP32 in arduino before:**

   * [Follow the instructions here for getting arduino setup for ESP32](https://github.com/espressif/arduino-esp32/blob/master/docs/arduino-ide/boards_manager.md)

3. With your sketch open in arduino, go to Tools -> Board: -> and select "ESP32 Dev Module" from the dropdown list. Make sure all the other options look like the image below.

   <p align="middle">
     <img width="200" src="https://github.com/maholli/SAM32/blob/master/references/toolsMenu.PNG">
   </p>

4. Even through we don't have a board plugged into our computer yet, click the "Upload" button in the top left corner (arrow pointing right) to compile and build your code.  (In this tutorial, I will use the File -> Examples -> ESP32 -> ChipID -> GetChipID example sketch)

5. In arduino's output window, you should see a bunch of stuff scroll by, eventually ending with something that looks like this (more or less):

   <p align="middle">
     <img width="600" src="https://github.com/maholli/SAM32/blob/master/references/doneCompiling.PNG">
   </p>

6. Copy and paste the text that is highlighted in the image above to a notepad or text-editor where it's easier to work with.

7. Now we need to search for where each file is stored on your computer. This will vary for everyone. Below shows how I've manipulated the text we copied earlier to make it easier to see:

   <p align="middle">
     <img width="600" src="https://github.com/maholli/SAM32/blob/master/references/fileHunting.PNG">
   </p>

8. Copy all 4 (or more) files from their respective directories onto the SAM32 SD card and then install the card into your board.

9. Plug the SAM32 into your computer and copy the "adafruit_miniesptool.py" and "esp_ardu.py" files from this GitHub directory onto your SAM32.

10. Open the "esp_ardu.py" text file and edit the last few lines to reflect the same file names you found earlier. 

11. Now open the serial console and type:

    ```
    import esp_prog
    ```

    and then press the enter key. The esp32 programming process now begin. You can watch the progress in the terminal. **DO NOT REMOVE POWER** during programming, it can take quite a while!! (we can and should optimize this in the future)

12. The serial terminal will indicate when programming is finished by reaching the end of the "esp_ardu.py" script.
