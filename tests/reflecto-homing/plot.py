import math
import pickle
import matplotlib.pyplot as plt
from scipy import stats
from sys import argv

mm_per_pulse = (math.pi * 13.5) / 1600
mm_per_step = (math.pi * 10) / 1600

with open('home_errors.pkl') as fh:
    data = pickle.load(fh)

enc = []
steps = []
x = range(len(data['home_steps']))

for p, d in zip(data['home_steps'],data['move_steps']):
    p -= d
    steps.append(p * mm_per_step)

plt.plot(x[1:-2], steps[1:-2])
plt.xlabel('test #')
plt.ylabel('error (mm)')
plt.grid(True)
plt.title('reflective homing')
plt.show()
