# Testing reflective homing

![setup](setup.svg)

* 1600 count encoder with thread wrapped twice
* 8 time microstepping
* 12v
* 0.2A
* 130g weight

[Test program](test.py) sends moves for 2000 steps, then back 2000 steps.
Read results and write to errors.pkl

# Results

Maximum error is 1 encoder count.
