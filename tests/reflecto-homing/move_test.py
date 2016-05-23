import serial
import pickle
import struct
import time
from serial.tools import list_ports
port_name = '/dev/ttyACM0'
print("opening port " + port_name)
serial_port=serial.Serial()
serial_port.port=port_name
serial_port.timeout=12
serial_port.baudrate=115200
serial_port.open()

port_name = '/dev/ttyACM1'
print("opening port " + port_name)
enc_port=serial.Serial()
enc_port.port=port_name
enc_port.timeout=3
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

errors = []    

print("starting")
# reset the counter
for i in range(50):
    print(i)
    send(0, enc_port)

    send(2000, serial_port)
    send(-2000, serial_port)
    error = send(1,enc_port)
    # in case long wraps
    if error > 2 ** 16:
        error -= 2 ** 32;
    print(error)
    errors.append(error)

with open('errors.pkl', 'w') as fh:
    pickle.dump(errors, fh)
