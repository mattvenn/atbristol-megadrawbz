import Adafruit_BBIO.PWM as PWM
import time
myPWM="P8_13"
PWM.start(myPWM, 0, 1000)
PWM.set_duty_cycle(myPWM, 50)
time.sleep(5)
PWM.stop(myPWM)
PWM.cleanup()
