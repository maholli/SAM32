# Crickit library demo - Drive terminals

import time

from adafruit_crickit import crickit

# Turn on Drive 1 for 1 second and then off for 1 second
while True:
    crickit.drive_1.fraction = 1.0
    time.sleep(1)
    crickit.drive_1.fraction = 0.0
    time.sleep(1)
