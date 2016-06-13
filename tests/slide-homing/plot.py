#!/usr/bin/env python
import math
import pickle
import matplotlib.pyplot as plt
from scipy import stats
from sys import argv

mm_per_step = (math.pi * 35.0) / 1600.0

with open(argv[1]) as fh:
    data = pickle.load(fh)

enc = []
steps = []
x = range(len(data['home_steps']))

for p, d in zip(data['home_steps'],data['move_steps']):
    p -= d
    steps.append(p * mm_per_step)

if len(argv) == 3:
    window = int(argv[2])
    plt.plot(x[window:-window], steps[window:-window])
else:
    plt.plot(x, steps)
plt.xlabel('test #')
plt.ylabel('error (mm)')
plt.grid(True)
plt.title('slider homing')
plt.show()
