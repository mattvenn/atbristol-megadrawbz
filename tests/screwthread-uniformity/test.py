import serial
import pickle
import struct
import time
from serial.tools import list_ports

port_name = '/dev/ttyACM0'
print("opening port " + port_name)
motor_port=serial.Serial()
motor_port.port=port_name
motor_port.timeout=2
motor_port.baudrate=115200
motor_port.open()

port_name = '/dev/ttyACM1'
print("opening port " + port_name)
enc_port=serial.Serial()
enc_port.port=port_name
enc_port.timeout=2
enc_port.baudrate=115200
enc_port.open()

time.sleep(2)

def send(pos, port):
    bin = struct.pack('<h',pos)
    port.write(bin)

    # will block while stepper turns
    bin = port.read(4)
    pos, = struct.unpack('<L',bin)
    return pos

data = {
    'pos' : [],
    'enc' : [],
    }

send(0, enc_port)  # reset the counter
data['enc'].append(0)
data['pos'].append(0)
steps_per_rev = 1600
steps_per_send = 200  # decrease this if get timeouts on send()
steps = 10 * (steps_per_rev / steps_per_send)
for i in range(1, steps):
    send(+steps_per_send, motor_port)
    encpos = send(1, enc_port)
    data['enc'].append(encpos)
    data['pos'].append((i * steps_per_send))

with open('data.pkl', 'w') as fh:
    pickle.dump(data, fh)

for i in range(steps):
    send(-steps_per_send, motor_port)
