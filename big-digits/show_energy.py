import requests
from driver import driver
import logging
import time


# setup log
log = logging.getLogger('')
log.setLevel(logging.DEBUG)

log_format = logging.Formatter('%(asctime)s - %(levelname)-8s - %(message)s')

fh = logging.FileHandler('digits.log')
fh.setFormatter(log_format)
log.addHandler(fh)

log.info("starting")

driver = driver()
driver.set_pwm(5)
sleep_time = 60

try:
    while True:
        url = 'http://phant.cursivedata.co.uk/output/z8GLNwzBeQiZwl4aVa4zF8xzYVM.json?limit=1' 
        try:
            r = requests.get(url)
            watts = float(r.json()[0]['now_w'])
            kwatts = watts / 1000
            kwatts_str = "%05.2f" % kwatts
            log.info("updating digits with %s" % kwatts_str)
            driver.update(kwatts_str)

        except requests.exceptions.RequestException as e:
            log.warning("got requests exception: %s" % e)
            
        time.sleep(sleep_time)
except KeyboardInterrupt:
    log.info("interrupted!")
except Exception as e:
    log.error("exited with exception: %s" % e)
    log.error("exited with exception: %s" % type(e))

driver.cleanup()
log.info("ending")
