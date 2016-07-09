import os
# adafruit library didn't work for pin p9.42
# useful stuff here about how to set it up
# https://briancode.wordpress.com/2015/01/06/working-with-pwm-on-a-beaglebone-black/

class PWM():
    def __init__(self, period = 10000):
        self.path = '/sys/class/pwm/pwm2' # for pin p9.42
        os.system("echo 2 > /sys/class/pwm/export")
        os.system("echo 1 > %s/run" % self.path)
        self.period = period # ns
        os.system("echo %d > %s/period_ns" % (self.period, self.path))

    def set_pwm(self, duty):
        if duty < 0:
            duty = 0
        if duty > 100:
            duty = 100
        duty = 100 - duty
        duty *= 100
        os.system("echo %d > %s/duty_ns" % (duty, self.path))

if __name__ == '__main__':
    import time
    pwm = PWM()
    for i in range(100):
        pwm.set_pwm(i)
        time.sleep(0.01)
