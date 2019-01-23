import time
import board
import digitalio
import adafruit_character_lcd

# Character LCD Config:
# Modify this if you have a different sized character LCD
lcd_columns = 16
lcd_rows = 2

# Metro M0 Pin Config:
lcd_rs = digitalio.DigitalInOut(board.D7)
lcd_en = digitalio.DigitalInOut(board.D8)
lcd_d7 = digitalio.DigitalInOut(board.D12)
lcd_d6 = digitalio.DigitalInOut(board.D11)
lcd_d5 = digitalio.DigitalInOut(board.D10)
lcd_d4 = digitalio.DigitalInOut(board.D9)
lcd_backlight = digitalio.DigitalInOut(board.D13)

# Init the LCD class
lcd = adafruit_character_lcd.Character_LCD(lcd_rs, lcd_en, lcd_d4, lcd_d5, lcd_d6,
                                           lcd_d7, lcd_columns, lcd_rows, lcd_backlight)

# Print a 2x line message
lcd.message('hello\ncircuitpython')
# Wait 5s
time.sleep(5)
# Demo showing cursor
lcd.clear()
lcd.show_cursor(True)
lcd.message('showing cursor ')
# Wait 5s
time.sleep(5)
# Demo showing the blinking cursor
lcd.clear()
lcd.blink(True)
lcd.message('Blinky Cursor!')
# Wait 5s
time.sleep(5)
lcd.blink(False)
# Demo scrolling message LEFT
lcd.clear()
scroll_msg = 'Scroll'
lcd.message(scroll_msg)
# Scroll to the left
for i in range(lcd_columns - len(scroll_msg)):
    time.sleep(0.5)
    lcd.move_left()
# Demo turning backlight off
lcd.clear()
lcd.message("going to sleep\ncya later!")
lcd.set_backlight(False)
time.sleep(2)
