import serial
import random
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

time.sleep(2)

def send(pos, port):
    bin = struct.pack('<h',pos)
    port.write(bin)

    # will block while stepper turns
    bin = port.read(4)
    pos, = struct.unpack('<L',bin)
    return pos

data = { 'move_steps' : [], 'home_steps' : [] }
logging.info("starting")
# reset the counter
try:
    for i in range(50):
        logging.info("test %d" % i)

        # move motor, which then homes
    #    move_steps = random.randint(1000,4000)
        move_steps = 4000

        logging.info("moving %d steps" % move_steps)
        home_steps = send(move_steps, serial_port)
        logging.info("home took %d steps" % home_steps)

        data['home_steps'].append(home_steps)
        data['move_steps'].append(move_steps)
        time.sleep(0.5)
except KeyboardInterrupt:
    logging.error("interrupted")

with open('home_errors.pkl', 'w') as fh:
    pickle.dump(data, fh)
