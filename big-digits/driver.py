"""
title: big 7 segment driver
author: matt venn, 2014
license: GPL attribution share alike
"""
import time

#undefine for testing with GPIO lib
raspi = False
bbb = True

#define which segments are on/off for each digit
#last element is for the point
letters = {
 '0' : [ 1,1,1,1,1,1,0,0 ], # 0
 '1' : [ 0,1,1,0,0,0,0,0 ], # 1
 '2' : [ 1,1,0,1,1,0,1,0 ], # 2
 '3' : [ 1,1,1,1,0,0,1,0 ], # 3
 '4' : [ 0,1,1,0,0,1,1,0 ], # 4
 '5' : [ 1,0,1,1,0,1,1,0 ], # 5
 '6' : [ 0,0,1,1,1,1,1,0 ], # 6
 '7' : [ 1,1,1,0,0,0,0,0 ], # 7
 '8' : [ 1,1,1,1,1,1,1,0 ], # 8
 '9' : [ 1,1,1,0,0,1,1,0 ], # 9
 ' ' : [ 0,0,0,0,0,0,0,0 ], 
 '.' : [ 0,0,0,0,0,0,0,1 ], 
 'P' : [ 1,1,0,0,1,1,1,1 ], 
}

if raspi:
    import RPi.GPIO as GPIO
    GPIO.setwarnings(False)
    GPIO.setmode(GPIO.BOARD)

    #pin defs
    not_oe = 8 #output enable
    le = 10 #latch
    clk = 12 #clock
    sdo = 16 #data out

elif bbb:
    import Adafruit_BBIO.GPIO as GPIO
    from bbb_pwm import PWM

    not_oe = "P9_42" #output enable pwm
    le = "P9_28" #latch
    clk = "P9_41" #clock
    sdo = "P9_30" #data out

if raspi or bbb:
    GPIO.setup(not_oe, GPIO.OUT)
    GPIO.setup(le, GPIO.OUT)
    GPIO.setup(clk, GPIO.OUT)
    GPIO.setup(sdo, GPIO.OUT)

    #turn off leds
    GPIO.output(not_oe, True)
    #turn off latch
    GPIO.output(le,False)
    #clock starts low
    GPIO.output(clk,False)

class driver:
    BLANK = 10
    def __init__(self, verbose=False):
        #verbose output
        self.verbose = verbose

        freq = 200 #hz
        if raspi:
            self.pwm = GPIO.PWM(not_oe, freq)
            #lights off to start with
            self.pwm.start(100) #duty cycle
        if bbb:
            self.pwm = PWM()
            self.pwm.set_pwm(0)

    #sends a string representation of a float, deals with floating points
    def update(self,number):
        point = False
        
        #send least significant digit first
        for char in reversed(number):
            if char == '.':
                point = True
                continue
            self.send_digit(char,point)
            point = False

        #latch the outputs
        if raspi or bbb:
            GPIO.output(le,True)
            GPIO.output(le,False)
        

    #send a char, with optional point
    def send_digit(self,char,point=False):
        #set the point bit
        if point:
            letters[char][7] = 1
        else:
            letters[char][7] = 0

        if self.verbose:
            print("sending %s%s = %s" % (
                char,
                '.' if point else '',
                ','.join(str(x) for x in letters[char]))
                )

        #8 clock pulses
        if raspi or bbb:
            for i in range(8):
                GPIO.output(clk,False)
                #data
                if letters[char][7-i]:
                    GPIO.output(sdo,True)
                else:
                    GPIO.output(sdo,False)

                GPIO.output(clk,True)

    #turn off leds
    def turn_off(self):
        if raspi or bbb:
            self.set_pwm(0)

    #turn on leds
    def turn_on(self):
        if raspi or bbb:
            self.set_pwm(100)


    def set_pwm(self,pwm):
        if raspi:
            self.pwm.ChangeDutyCycle(100-pwm)
        elif bbb:
            self.pwm.set_pwm(100-pwm)

    def fade(self,start,end,length):
        if start > end:
           step = -1
        else:
            step = 1
        for i in range(start,end + step,step):
            time.sleep(float(length) / abs(start-end))
            self.set_pwm(i)

    def cleanup(self):
        self.set_pwm(0)
        self.turn_off()
        GPIO.cleanup()
        #cleanup


#run a test sequence
if __name__ == '__main__':
    driver = driver()
    #driver.set_pwm(100)
    driver.turn_on()
    print("running test sequence")
    point = False
    try:
        while True:
            for i in range(9):
                string = "%d" % (i)
                print("sending %s" % string)
                driver.fade(0,100,0.05)
                driver.update(string)
                time.sleep(1)
                driver.fade(100,0,0.05)
    except KeyboardInterrupt:
        driver.cleanup()
