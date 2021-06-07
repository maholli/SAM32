"""
CircuitPython driver for SAM32 dev board

* Author(s): Max Holliday
"""


import neopixel
import board
import busio, time
import digitalio
import storage, sys
import analogio,microcontroller,supervisor
import sdcardio, os
from adafruit_esp32spi import adafruit_esp32spi
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
        self.payload=None
        self.filename=''
        # Define LEDs:
        self._led = digitalio.DigitalInOut(board.LED)
        self._led.switch_to_output()

        # Define battery voltage
        # self._vbatt = analogio.AnalogIn(board.BATTERY)

        # Define SPI,I2C,UART
        self._spi  = board.SPI()
        self._uart = busio.UART(board.TX2,board.RX2)

        # Define ESP32
        self._esp_dtr = digitalio.DigitalInOut(board.DTR)
        self._esp_rts = digitalio.DigitalInOut(board.RTS)
        self._esp_cs =  digitalio.DigitalInOut(board.ESP_CS) #ESP IO15
        self._esp_rdy = digitalio.DigitalInOut(board.TCK) #ESP IO13
        self._esp_cs.direction = digitalio.Direction.OUTPUT
        self._esp_dtr.direction = digitalio.Direction.OUTPUT
        self._esp_rts.direction = digitalio.Direction.OUTPUT
        self._esp_cs.value = True
        self._esp_dtr.value = False
        self._esp_rts.value = False
        self._wifi = False

        # Initialize sdcard (always try sdcard before anything else on the spi bus)
        try:
            self._sd  = sdcardio.SDCard(self._spi, board.xSDCS, baudrate=4000000)
            self._vfs = storage.VfsFat(self._sd)
            storage.mount(self._vfs, "/sd")
            sys.path.append("/sd")
            self.hardware['SDcard'] = True
        except Exception as e:
            print('[WARNING]',e)


        # Initialize Neopixel
        try:
            self.neopixel = neopixel.NeoPixel(board.NEOPIXEL, 1, brightness=0.2, pixel_order=neopixel.GRB)
            self.neopixel[0] = (0,0,0)
            self.hardware['Neopixel'] = True
        except Exception as e:
            print('[WARNING]',e)
    def esp_init(self):
        # Initialize ESP32
        try:
            self._esp = adafruit_esp32spi.ESP_SPIcontrol(self._spi, self._esp_cs, self._esp_rdy, self._esp_rts, gpio0_pin=self._esp_dtr, debug=False)
            if self._esp.status == adafruit_esp32spi.WL_IDLE_STATUS:
                self.hardware['ESP32'] = True
        except Exception as e:
            print('[WARNING]',e,'- have you programed the ESP32?')

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
    def brightness(self):
        return self.neopixel.brightness
    @brightness.setter
    def brightness(self,value):
        if self.hardware['Neopixel']:
            try:
                self.neopixel.brightness = value
            except Exception as e:
                print('[WARNING]',e)

    def unique_file(self):
        if not self.hardware['SDcard']:
            return False
        try:
            name = 'DATA_000'
            files = []
            for i in range(0,50):
                _filename = name[:-2]+str(int(i/10))+str(int(i%10))+'.txt'
                if _filename not in os.listdir('/sd/'):
                    with open('/sd/'+_filename, "a") as f:
                        time.sleep(0.01)
                    self.filename = '/sd/'+_filename
                    print('filename is:',self.filename)
                    return True
        except Exception as e:
            print('--- SD card error ---', e)
            self.RGB = (255,0,0)
            return False

    def save(self, dataset, savefile=None):
        if savefile == None:
            savefile = self.filename
        try:
            with open(savefile, "a") as file:
                for item in dataset:
                    for i in item:
                        if isinstance(i,float):
                            file.write(',{:.9E}'.format(i))
                        else:
                            file.write(',{}'.format(i))
                    file.write('\n')
        except Exception as e:
            print(e)

    def print_file(self,filedir):
        try:
            print('--- Printing File: {} ---'.format(filedir))
            with open(filedir, "r") as file:
                for line in file:
                    print(line.strip())
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
            self.neopixel.auto_write = True


    def battery_voltage(self):
        _voltage = self._vbatt.value * 3.3 / (2 ** 16)
        _voltage = _voltage / 2 # voltage divider
        return _voltage # in volts



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

    def ap_scan(self):
        if self.hardware['ESP32']:
            try:
                for ap in self._esp.scan_networks():
                    print("\t%s\tRSSI: %d" % (str(ap['ssid'], 'utf-8'), ap['rssi']))
            except Exception as e:
                print('[WARNING]',e)
        else:
            print('[WARNING] ESP32 not initialized')

    def wifi(self, enterprise=1):
        if self.hardware['ESP32']:
            try:
                from adafruit_esp32spi import adafruit_esp32spi_wifimanager
                from secrets import secrets
                print("\tConnecting to AP...")
                if enterprise == 2:
                    print("\tConfigured for Enterprise Connection...")
                self.WIFI = adafruit_esp32spi_wifimanager.ESPSPI_WiFiManager(self._esp, secrets,connection_type=enterprise, status_pixel=None)
                self._wifi = True
            except Exception as e:
                print('[WARNING]',e)
        else:
            print('[WARNING] ESP32 not initialized')

    def synctime(self):
        if self._wifi:
            try:
                import rtc
                TIME_API = "http://worldtimeapi.org/api/ip"
                the_rtc = rtc.RTC()
                response = None
                for _ in range(10): # 10 tries
                    try:
                        print("Fetching json from", TIME_API)
                        response = sam32.WIFI.get(TIME_API)
                        break
                    except (ValueError, RuntimeError) as e:
                        print("Failed to get data, retrying\n", e)
                        continue

                json = response.json()
                current_time = json['datetime']
                the_date, the_time = current_time.split('T')
                year, month, mday = [int(x) for x in the_date.split('-')]
                the_time = the_time.split('.')[0]
                hours, minutes, seconds = [int(x) for x in the_time.split(':')]

                # We can also fill in these extra nice things
                year_day = json['day_of_year']
                week_day = json['day_of_week']
                is_dst = json['dst']

                now = time.struct_time((year, month, mday, hours, minutes, seconds, week_day, year_day, is_dst))
                the_rtc.datetime = now
            except Exception as e:
                print('[WARNING]',e)
                self.RGB = (255,0,0)

    def esp_prog(self):
        if self.hardware['SDcard']:
            try:
                file=None
                for f in os.listdir('/sd/'):
                    if 'NINA_' in f:
                        file='/sd/'+f
                        break
                if file is None:
                    raise RuntimeError("\tCouldn't find ESP32 firmware on SD Card")

                import adafruit_miniesptool
                esptool = adafruit_miniesptool.miniesptool(self._uart, self._esp_dtr, self._esp_rts, flashsize=4*1024*1024)
                esptool.debug = True
                time.sleep(0.5)

                esptool.sync()

                print("\tSynced")
                print("\tFound:", esptool.chip_name)
                if esptool.chip_name != "ESP32":
                    raise RuntimeError("\tfor ESP32 only")
                esptool.baudrate = 912600
                print("\tMAC ADDR: ", [hex(i) for i in esptool.mac_addr])

                esptool.flash_file(file, 0x00)

                esptool.reset()
                time.sleep(0.5)
            except Exception as e:
                    print('[WARNING]',e)
        else:
            print('[WARNING] no SD card found')

    def esp_repl(self):
        if self.hardware['ESP32']:
            while True:
                try:
                    if self._uart.in_waiting:
                        try:
                            data = self._uart.read()
                            data_string = ''.join([chr(b) for b in data]) 
                            print('\t',data_string, end='')
                        except:
                            pass
                    if supervisor.runtime.serial_bytes_available:
                        call = input()
                        if call == 'exit':
                            print('=== exiting ESP32 REPL ===')
                            return
                        self._uart.write(bytes(call, 'utf-8')+b'\x0d\x0a') #add CR+LF to end of call
                        try:
                            data = self._uart.read()
                            data_string = ''.join([chr(b) for b in data])
                            print(data_string, end='')
                        except:
                            pass
                except Exception as e:
                    print('[WARNING]',e)
    def connected(self, client):
                    self.io.subscribe(group_key=self.group_name)
    def disconnected(self, client):
        print("Disconnected from Adafruit IO!")
    def message(self, client, feed_id, payload):
        print("Feed {0} received new value: {1}".format(feed_id, payload))
        self.payload = payload

    def iot(self,type='mqtt',group='light-group',action=None,conn=None,disc=None):
        from adafruit_esp32spi import adafruit_esp32spi_wifimanager
        import adafruit_esp32spi.adafruit_esp32spi_socket as socket
        import adafruit_requests as requests
        from adafruit_io.adafruit_io import IO_HTTP

        from secrets import secrets
        from adafruit_io.adafruit_io import IO_MQTT
        from adafruit_minimqtt import MQTT
        if not self.hardware['ESP32']:
            raise
        if not action: action=self.message
        if not conn: conn=self.connected
        if not disc: disc=self.disconnected
        # try:
        requests.set_socket(socket,self._esp)
        self.wifi()
        # self.WIFI = adafruit_esp32spi_wifimanager.ESPSPI_WiFiManager(self._esp, secrets, status_pixel=None)
        self.group_name = group

        self.WIFI.connect()
            
        mqtt_client = MQTT(
        socket=socket,
        broker="io.adafruit.com",
        username=secrets["aio_username"],
        password=secrets["aio_key"],
        network_manager=self.WIFI
        )
        self.io = IO_MQTT(mqtt_client)
        self.io.on_connect = conn
        self.io.on_disconnect = disc
        self.io.on_message = action
        # else:
        #     return
        time.sleep(1)
        self.io.connect()

        # except Exception as e:
        #     print('[WARNING]',e)         

sam32 = DevBoard()
