import math
import pickle
import matplotlib.pyplot as plt

mm_per_step = (math.pi * 8) / (16 * 200 * 10)  # 16 time multistep don't know why the additional 10
mm_per_pulse = (math.pi * 13) / 1600

with open('data.pkl') as fh:
    data = pickle.load(fh)

enc = []
pos = []
for e in data['enc']:
    enc.append(e * mm_per_pulse)

for p in data['pos']:
    pos.append(p * mm_per_step)

plt.plot(enc, pos)
plt.xlabel('enc')
plt.ylabel('pos')
plt.grid(True)
plt.title('screw uniformity')
plt.show()

