## Using the ESP32 as a simple/effective SPI wifi device

Programming the ESP32 with this SAM32-specific firmware: [NINA_W102-1.3.0.bin](./ESP32SPI/NINA_W102-1.3.0.bin) allows us to use [Adafruit's ESP32SPI](https://github.com/adafruit/Adafruit_CircuitPython_ESP32SPI) library for easy internet access!

### Instructions for programming

1. Copy [NINA_W102-1.3.0.bin](./ESP32SPI/NINA_W102-1.3.0.bin) onto a microSD card and insert into your SAM32
2. Plug the SAM32 into your computer and copy [esp32spi_prog.py](./ESP32SPI/esp32spi_prog.py) onto the CIRCUITPY drive that appears
3. Open a serial console and access the SAM32 REPL ([as described earlier](https://github.com/maholli/SAM32/tree/master/firmware#accessing-the-serial-console)) 
4. Press <kbd>Ctrl</kbd>+<kbd>D</kbd> to reboot the board, then <kbd>Ctrl</kbd>+<kbd>C</kbd> to halt it. 
5. Type
   ```
   import esp32spi_prog
   ```
   and press enter.
6. Watch the serial console as programming begins. **BE PATIENT** it can take up to 20 minutes to program the ESP32!

### Testing the ESP32SPI

1. Copy [esp32spi_simpletest.py](./ESP32SPI/esp32spi_simpletest.py) onto your CIRCUITPY drive 
2. Edit the file and update `esp.connect_AP(b'MY_SSID_NAME', b'MY_SSID_PASSWORD')` with your specific wifi details
3. Rename the file to main.py
4. Observe the output in the serial monitor
