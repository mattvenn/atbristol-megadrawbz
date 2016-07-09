import Adafruit_BBIO.GPIO as GPIO
import os
import logging
log = logging.getLogger('')
# create file handler and set to debug
log_format = logging.Formatter('%(asctime)s - %(levelname)-8s - %(message)s')
fh = logging.FileHandler('button.log')
fh.setFormatter(log_format)
log.addHandler(fh)

pin = "P9_12"
GPIO.setup(pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.wait_for_edge(pin, GPIO.RISING)
log.warning("button pressed")
#os.system("halt")
GPIO.cleanup()
