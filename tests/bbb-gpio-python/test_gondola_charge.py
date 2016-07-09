import Adafruit_BBIO.GPIO as GPIO
import time

pin = "P9_12"
GPIO.setup(pin, GPIO.OUT)
try:
    while True:
        time.sleep(.5)
        GPIO.output(pin, False)
        print(False)
        time.sleep(.5)
        GPIO.output(pin, True)
        print(True)
except KeyboardInterrupt as e:
    GPIO.cleanup()

