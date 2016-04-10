import Adafruit_BBIO.GPIO as GPIO
import time

pin = "P9_12"
GPIO.setup(pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.wait_for_edge(pin, GPIO.RISING)
print "started"

def callback(channel):
    print "event detected!"

GPIO.add_event_detect(pin, GPIO.RISING, callback=callback)
#GPIO.add_event_detect(pin, GPIO.RISING)

try:
    while True:
        time.sleep(0.5)
#        if GPIO.event_detected(pin):
#            print "event detected!"
except KeyboardInterrupt as e:
    GPIO.cleanup()

