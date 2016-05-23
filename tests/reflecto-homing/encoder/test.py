import serial
import struct
import time

port_name = '/dev/ttyACM1'
print("opening port " + port_name)
enc_port=serial.Serial()
enc_port.port=port_name
enc_port.timeout=1
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

send(0, enc_port)

while True:
    pos = send(1, enc_port)
    print pos
    time.sleep(0.1)
