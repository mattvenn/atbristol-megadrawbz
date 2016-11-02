exec >> low-power.log 2>&1
date
# check battery dead
~/bipod/xbee-hal-py/test_xbee.py  
# charge for 30 secs
sudo python ~/atbristol-megadrawbz/tests/bbb-gpio-python/charger_on.py
sleep 30

# check it's on
~/bipod/xbee-hal-py/test_xbee.py  

# turn off power
sudo python ~/atbristol-megadrawbz/tests/bbb-gpio-python/charger_off.py

# check it stays on for at least 5 seconds
sleep 5
~/bipod/xbee-hal-py/test_xbee.py  

# check it's dead again after one minute
sleep 60
~/bipod/xbee-hal-py/test_xbee.py  
echo  '====='
