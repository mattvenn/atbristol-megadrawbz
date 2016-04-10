import select
import time
import threading

class Interrupt(threading.Thread):

    def run(self):
        f = '/sys/class/gpio/gpio60/value'
        fh = open(f)
        fh.read()
        poller = select.poll()
        poller.register(fh, select.POLLPRI | select.POLLERR)
        events = poller.poll()
        fh.close()

thread = Interrupt()
thread.start()
print("blocking")
thread.join()

print("looping")
thread = Interrupt()
thread.start()
while True:
    print("waiting")
    time.sleep(1)
    if not thread.isAlive():
        print("interrupted")
        thread.join()
        exit(1)
