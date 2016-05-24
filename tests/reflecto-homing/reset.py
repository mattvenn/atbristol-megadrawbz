#!/usr/bin/env python
import serial
import sys

port_name = sys.argv[1]

ser = serial.Serial(
    port=port_name,
    baudrate=1200)
ser.isOpen()
ser.close()
