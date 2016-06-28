import Adafruit_BBIO.GPIO as GPIO
import time

pin = "P9_13"
GPIO.setup(pin, GPIO.OUT)
try:
    while True:
        time.sleep(0.5)
        GPIO.output(pin, False)
        time.sleep(0.5)
        GPIO.output(pin, True)
except KeyboardInterrupt as e:
    GPIO.cleanup()

