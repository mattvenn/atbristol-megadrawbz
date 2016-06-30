import Adafruit_BBIO.GPIO as GPIO
import time

pin = "P9_12"
GPIO.setup(pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

try:
    while True:
        time.sleep(0.5)
        print(GPIO.input(pin))
except KeyboardInterrupt as e:
    GPIO.cleanup()

