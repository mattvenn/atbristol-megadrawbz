import math
import pickle
import matplotlib.pyplot as plt
from scipy import stats
from sys import argv

# 8mm screw thread depth, 8 time multistep on 200 step per rev motor
mm_per_step = (math.pi * 8) / (8 * 200)  
print(mm_per_step)
# measured from graph 120mm long experiment
mm_per_pulse = (math.pi * 13.5) / 1600

with open(argv[1]) as fh:
    data = pickle.load(fh)

enc = []
pos = []
for e in data['enc']:
    enc.append(e * mm_per_pulse)

for p in data['pos']:
    pos.append(p * mm_per_step)

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
