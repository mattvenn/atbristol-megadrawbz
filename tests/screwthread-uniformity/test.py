import serial
import struct
import time
from serial.tools import list_ports

port_name = None
for port in list_ports.comports():
    if 'ACM' in port[0]:
        port_name = port[0]

if port_name is None:
    print("no port found")
    exit(1)

print("opening port " + port_name)
serial_port=serial.Serial()
serial_port.port=port_name
serial_port.timeout=2
serial_port.baudrate=115200
serial_port.open()
time.sleep(2)

def send(pos):
    bin = struct.pack('<H',pos)
    serial_port.write(bin)

    bin = serial_port.read(4)
    pos, = struct.unpack('<L',bin)
    return pos

pos = []
enc = []
steps_per_send = 20 
for i in range(20000):
    encpos = send(steps_per_send)
    enc.append(encpos)
    pos.append((i * steps_per_send))

import matplotlib.pyplot as plt
plt.plot(enc, pos)
plt.xlabel('pos')
plt.ylabel('send')
plt.grid(True)
plt.title('screw uniformity')
plt.show()

