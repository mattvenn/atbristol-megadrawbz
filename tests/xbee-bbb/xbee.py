import serial
import struct
import crcmod
import time
crc8_func = crcmod.predefined.mkPredefinedCrcFun("crc-8-maxim")

port_name = '/dev/ttyUSB0'
serial_port=serial.Serial()
serial_port.port=port_name
serial_port.timeout=0.5
serial_port.baudrate=57600
serial_port.open()

def send_packet(amount):
    bin = struct.pack('<B', amount)
    print("tx data = %d, cksum = %x" % (amount, crc8_func(bin)))
    bin = struct.pack('<BB',amount, crc8_func(bin))
    serial_port.write(bin)

    response = serial_port.read(3)
    if response:
        data, cksum = struct.unpack('<HB', response)
        assert cksum == crc8_func(struct.pack('<H',data))
        print("rx data = %d, cksum = %x" % (data, cksum))
        return data

for i in range(180):
    send_packet(i)
    time.sleep(0.01)
