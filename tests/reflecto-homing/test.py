import serial
import pickle
import struct
import time
import logging
logging.basicConfig(level=logging.INFO)
from serial.tools import list_ports
port_name = '/dev/ttyACM0'
logging.info("opening port " + port_name)
serial_port=serial.Serial()
serial_port.port=port_name
serial_port.timeout=12
serial_port.baudrate=115200
serial_port.open()

port_name = '/dev/ttyACM1'
logging.info("opening port " + port_name)
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

data = { 'enc' : [], 'steps' : [] }

logging.info("starting")
# reset the counter
for i in range(50):
    logging.info("test %d" % i)
    # reset encoder
    send(0, enc_port)

    # move motor, which then homes
    steps = 2000
    logging.info("moving %d steps" % steps)
    home_steps = send(steps, serial_port)
    logging.info("home took %d steps" % home_steps)

    # read the error
    error = send(1,enc_port)
    # in case long wraps
    if error > 2 ** 16:
        error -= 2 ** 32;
    logging.info("error = %d" % error)
    data['enc'].append(error)
    data['steps'].append(home_steps)

with open('home_errors.pkl', 'w') as fh:
    pickle.dump(data, fh)
