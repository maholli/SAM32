"""
CircuitPython driver for SAM32 dev board

* Author(s): Max Holliday
"""
from adafruit_esp32spi import adafruit_esp32spi, adafruit_esp32spi_wifimanager
import adafruit_esp32spi.adafruit_esp32spi_requests as requests
import adafruit_sdcard, neopixel
import board, microcontroller
import busio, time
import digitalio, analogio
import storage, sys, supervisor

class DevBoard:
    def __init__(self):
        """
        Big init routine as the whole board is brought up. 
        """
        self.hardware = {
                       'SDcard':   False,
                       'ESP32':    False,
                       'Neopixel': False,
                       }

        # Define LEDs:
        self._led = digitalio.DigitalInOut(board.LED)
        self._led.switch_to_output()

        # Define battery voltage
        self._vbatt = analogio.AnalogIn(board.BATTERY)

        # Define SPI,I2C,UART
        self._spi  = busio.SPI(board.SCK,MOSI=board.MOSI,MISO=board.MISO)
        self._uart = busio.UART(board.TX2,board.RX2)

        # Define sdcard
        self._sdcs = digitalio.DigitalInOut(board.xSDCS)
        self._sdcs.switch_to_output(value=True)

        # Define ESP32
        self._esp_dtr = digitalio.DigitalInOut(board.DTR)
        self._esp_rts = digitalio.DigitalInOut(board.RTS)
        self._esp_cs =  digitalio.DigitalInOut(board.TMS) #GPIO14
        self._esp_rdy = digitalio.DigitalInOut(board.TCK) #GPIO13
        self._esp_dtr.switch_to_output()
        self._esp_rts.switch_to_output()

        # Initialize sdcard
        try:
            self._sd  = adafruit_sdcard.SDCard(self._spi, self._sdcs)
            self._vfs = storage.VfsFat(self._sd)
            storage.mount(self._vfs, "/sd")
            sys.path.append("/sd")
            self.hardware['SDcard'] = True
        except Exception as e:
            print('[WARNING]',e)          

        # Initialize ESP32
        try:
            self._esp = adafruit_esp32spi.ESP_SPIcontrol(self._spi, self._esp_cs, self._esp_rdy, self._esp_rts, gpio0_pin=self._esp_dtr, debug=False)
            requests.set_interface(self._esp)
            if self._esp.status == adafruit_esp32spi.WL_IDLE_STATUS:
                self.hardware['ESP32'] = True
        except Exception as e:
            print('[WARNING]',e) 

        # Initialize Neopixel
        try:
            self.neopixel = neopixel.NeoPixel(board.NEOPIXEL, 1, brightness=0.2, pixel_order=neopixel.GRB)
            self.neopixel[0] = (0,0,0)
            self.hardware['Neopixel'] = True
        except Exception as e:
            print('[WARNING]',e) 

    @property
    def temperature_cpu(self):
        return microcontroller.cpu.temperature # Celsius 

    @property
    def LED(self):
        return self._led.value
    @LED.setter
    def LED(self,value):
        self._led.value = value

    @property
    def RGB(self):
        return self.neopixel[0]
    @RGB.setter
    def RGB(self,value):
        if self.hardware['Neopixel']:
            try:
                self.neopixel[0] = value
            except Exception as e:
                print('[WARNING]',e)

    @property
    def BRIGHTNESS(self):
        return self.neopixel.brightness
    @BRIGHTNESS.setter
    def BRIGHTNESS(self,value):
        if self.hardware['Neopixel']:
            try:
                self.neopixel.brightness = value
            except Exception as e:
                print('[WARNING]',e)
    
    def wheel(self,pos):
        # Input a value 0 to 255 to get a color value.
        # The colours are a transition r - g - b - back to r.
        if pos < 0 or pos > 255:
            r = g = b = 0
        elif pos < 85:
            r = int(pos * 3)
            g = int(255 - pos*3)
            b = 0
        elif pos < 170:
            pos -= 85
            r = int(255 - pos*3)
            g = 0
            b = int(pos*3)
        else:
            pos -= 170
            r = 0
            g = int(pos*3)
            b = int(255 - pos*3)
        return (r, g, b)

    @property
    def rainbow(self):
        try:
            print('\n\tPress any key to stop')
            self.neopixel.auto_write = False
            while True:
                for j in range(255):
                    if supervisor.runtime.serial_bytes_available:
                        self.neopixel.auto_write = True
                        self.neopixel[0] = (0,0,0)
                        return
                    else:
                        pixel_index = (256 // 1) + j
                        self.neopixel[0] = self.wheel(pixel_index & 255)
                        self.neopixel.show()
                        time.sleep(0.1)
        except Exception as e:
            print('[WARNING]',e)
    @property
    def battery_voltage(self):
        _voltage = self._vbatt.value * 3.3 / (2 ** 16)
        _voltage = _voltage / 2 # voltage divider
        return _voltage # in volts
    
    @property
    def esp_status(self):
        if self.hardware['ESP32']:
            try:
                if self._esp.status == adafruit_esp32spi.WL_IDLE_STATUS:
                    print('\tESP32 is idle')
                else:
                    print('\t',self._esp.status)
            except Exception as e:
                print('[WARNING]',e) 
        else:
            print('[WARNING] ESP32 not initialized')

    @property
    def ap_scan(self):
        if self.hardware['ESP32']:
            try:
                for ap in self._esp.scan_networks():
                    print("\t%s\tRSSI: %d" % (str(ap['ssid'], 'utf-8'), ap['rssi']))
            except Exception as e:
                print('[WARNING]',e)
        else:
            print('[WARNING] ESP32 not initialized')
    
    def wifi(self,ssid,pswrd):
        if self.hardware['ESP32']:
            try:
                print("\tConnecting to AP...")
                while not self._esp.is_connected:
                    try:
                        self._esp.connect_AP(bytes(bytearray(ssid)),bytes(bytearray(pswrd)))
                    except RuntimeError as e:
                        print("\t\tCould not connect to AP, retrying: ",e)
                        continue
                print("\tConnected to", str(self._esp.ssid, 'utf-8'), "\tRSSI:", self._esp.rssi)
                print("\tMy IP address is", self._esp.pretty_ip(self._esp.ip_address))
                print("\tPing google.com: %d ms" % self._esp.ping("google.com"))
            except Exception as e:
                print('[WARNING]',e)
        else:
            print('[WARNING] ESP32 not initialized')

sam32 = DevBoard()