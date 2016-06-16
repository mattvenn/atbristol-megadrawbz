# Stepper choice

with a spool d of 35mm, to adequately lift gondola and resist tampering (extra
1kg) must provide a torque of 1Nm.

aiming at:

    35mm spool
    max spd = 140mm/s
    res = 0.137 mm/step
    hyp error = 0.17mm over travel

## option 1

http://uk.rs-online.com/web/p/stepper-motors/5350502/
400 steps/rev, 1.26nm, 2.8A

config: micro steps is 2, and motor is directly attached

20% overrated so can run at 2.2A
cost = £35

## option 2

http://uk.rs-online.com/web/p/stepper-motors/5350401/?origin=null|fp&cm_sp=featureproducts-_-FeaturedProductsContent-_-5350401

200 steps/rev
0.44Nm, 1.68A

config: micro steps is 2, motor is attached with 1:2 pulley

cost = £27 + pulleys & belts (£11 + £3)
total = £40

notes: slightly underrated

## option 3

http://uk.rs-online.com/web/p/stepper-motors/5350445/
1.89Nm 2.8A

directly attached with 4 x microstepping
cost = £41.20

notes: 2.8A is above the drivers can supply

# Driver

## drv8825

rds on at 85C = 0.32R
page 23 data sheet:

    Ptot = 4*rdson*(iout)^2
    = 6W dissipation
