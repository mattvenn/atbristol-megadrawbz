# Stepper choice

specs:

* 1Nm to provide resistance against tampering
* string on a 35mm spool to reduce wrapping (and therefore hyp error)
* hyp error <= 0.2mm over travel
* max spd >= 150mm/s
* res <= 0.2 mm/step

# chosen option:

* motor: http://uk.rs-online.com/web/p/stepper-motors/5350423/
* 1nm at 2.8A, 200 steps per rev
* 1 : 1.8 pulley ratio

[datasheet](http://docs-europe.electrocomponents.com/webdocs/07e2/0900766b807e2898.pdf)

We should be able to achieve 1nm with about half the rated current but if
necessary we can increase the current. We also have options to increase torque
by decreasing microstepping at the cost resolution.

At 2000hz step freq, we achieve 150mm/s and datasheet says torque is derated by
20%.

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
