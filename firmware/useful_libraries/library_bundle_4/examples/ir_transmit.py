"""IR transmit example using Circuit Playground Express"""
import time
import adafruit_irremote
import pulseio
import board
import digitalio

# Create a button object to trigger IR transmit
button = digitalio.DigitalInOut(board.D4)
button.direction = digitalio.Direction.INPUT
button.pull = digitalio.Pull.DOWN

# Create a 'pulseio' output, to send infrared signals on the IR transmitter @ 38KHz
pwm = pulseio.PWMOut(board.IR_TX, frequency=38000, duty_cycle=2 ** 15)
pulseout = pulseio.PulseOut(pwm)
# Create an encoder that will take numbers and turn them into NEC IR pulses
encoder = adafruit_irremote.GenericTransmit(header=[9500, 4500], one=[550, 550],
                                            zero=[550, 1700], trail=0)

while True:
    if button.value:
        print("IR signal sent!")
        encoder.transmit(pulseout, [255, 2, 255, 0])
        time.sleep(0.2)
