import math
import pickle
import matplotlib.pyplot as plt
from scipy import stats
from sys import argv

mm_per_pulse = (math.pi * 13.5) / 1600

with open('home_errors.pkl') as fh:
    data = pickle.load(fh)

enc = []
x = range(len(data['enc']))
for p in data['enc']:
    enc.append(p * mm_per_pulse)

plt.plot(x, enc)
plt.xlabel('test #')
plt.ylabel('error (mm)')
plt.grid(True)
plt.title('reflective homing')
plt.show()
