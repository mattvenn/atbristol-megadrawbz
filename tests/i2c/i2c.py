from Adafruit_I2C import Adafruit_I2C
i2c = Adafruit_I2C(0x48)
b = i2c.readList(0, 2)
#ignore negative for now
t = b[0] / 2
if b[1]:
    t += 0.5
print t
