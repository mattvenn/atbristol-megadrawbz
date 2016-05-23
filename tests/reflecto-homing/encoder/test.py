import serial
import struct
import time

port_name = '/dev/ttyUSB0'
print("opening port " + port_name)
enc_port=serial.Serial()
enc_port.port=port_name
enc_port.timeout=1
enc_port.baudrate=115200
enc_port.open()

time.sleep(2)

pos = 1
bin = struct.pack('<h',pos)
enc_port.write(bin)

# will block while stepper turns
bin = enc_port.read(4)
pos, = struct.unpack('<L',bin)
print pos
