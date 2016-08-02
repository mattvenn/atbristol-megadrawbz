import Adafruit_BBIO.GPIO as GPIO
import time

pin = "P9_13"
GPIO.setup(pin, GPIO.OUT)
GPIO.output(pin, True)
exit(0)
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

