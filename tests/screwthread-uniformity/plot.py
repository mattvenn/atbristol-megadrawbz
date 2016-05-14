import math
import pickle
import matplotlib.pyplot as plt
from sys import argv

mm_per_step = (math.pi * 8) / (16 * 200 * 10)  # 16 time multistep don't know why the additional 10
mm_per_pulse = 300.0 / 12606 # measured from graph 120mm long experiment

with open(argv[1]) as fh:
    data = pickle.load(fh)

enc = []
pos = []
for e in data['enc']:
    enc.append(e * mm_per_pulse)

for p in data['pos']:
    pos.append(p * mm_per_step)
print data['pos'][-1]
from scipy import stats
print(stats.pearsonr(enc, pos))
slope, intercept, r_value, p_value, std_err = stats.linregress(enc, pos)
print(slope, intercept, r_value, p_value, std_err)
plt.plot(enc, pos)
#plt.plot(enc, enc*slope  + intercept)
plt.plot(pos, pos)
plt.xlabel('enc')
plt.ylabel('pos')
plt.grid(True)
plt.title('screw uniformity')
plt.show()

