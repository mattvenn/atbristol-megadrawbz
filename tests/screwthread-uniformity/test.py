import serial
import pickle
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
    bin = struct.pack('<h',pos)
    serial_port.write(bin)

    bin = serial_port.read(4)
    pos, = struct.unpack('<L',bin)
    return pos

data = {
    'pos' : [],
    'enc' : [],
    }

send(0)  # reset the counter
send(800)
exit(0)
steps = 20000
steps_per_send = 20 
for i in range(steps):
    encpos = send(+steps_per_send)
    data['enc'].append(encpos)
    data['pos'].append((i * steps_per_send))

with open('data.pkl', 'w') as fh:
    pickle.dump(data, fh)

for i in range(steps):
    send(-steps_per_send)
