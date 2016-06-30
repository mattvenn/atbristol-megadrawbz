# Install

got latest image from
http://elinux.org/Beagleboard:BeagleBoneBlack_Debian#BBW.2FBBB_.28All_Revs.29_Machinekit

then flashed to sd card like
xzcat bone-debian-7.10-machinekit-armhf-2016-04-10-4gb.img.xz | sudo dd of=/dev/sdb

put into bbb and rebooted
username and password is machinekit

used linuxcnc to choose the CRAMPS config and that starts

install machinekit-dev to compile new hals

# Timings

## probotix example - cometnp_metric.ini
xstep is p9.31 11.2khz

default and max velocity for x axis increased to 1000
xstep is p9.31 43khz, nice and even

tested changing pin from 142 to 931 and worked the same

copied cramps settings and got speed of 95khz, less even

## cramps example - cramps.hal

xstep is p8.13 60khz

# Bipod setup

comp --install wanted a posix directory. Made and then copied over. Warning
about sqrt.

Can't start linuxcnc, got a permission error similar to stuarts.

to do with missing vtable in bipodkins. Clues from
https://groups.google.com/forum/#!searchin/machinekit/vtable$20kinematics/machinekit/qNgl9Eb5cbA/jJzNCTshsm0J

took code from
https://github.com/machinekit/machinekit/pull/560/commits/9b60f6636091e8badb550a7804e23cf311424cd2#diff-898d31259dd7d87b1a698d30c99263ff

kins needs to be specified with motmod or will default to trivkins.

joint following errors were fixed (I think) by adding a maximum_acceleration in
the `[traj]` section.

# Serial setup

    # doesn't play well with the setup.sh that machinekit config uses
    echo BB-UART1 > /sys/devices/bone_capemgr.*/slots
    dmesg | grep tty

check connected xbee

    miniterm.py /dev/ttyO1 57600
    +++

replies with `OK`.

## path

add this to ~/.bashrc:

    PATH=$PATH:/home/machinekit/machinekit/configs/machinekit-bipod

not needed as can do loadusr ./xbee.py
loadusr needs -W parameter to wait till it initialises, probably why it was
occasionally failing on pc.


# startup issues

    Machine configuration directory is
    '/home/machinekit/machinekit/configs/machinekit-bipod'
    Machine configuration file is 'bipod.ini'
    Starting Machinekit...
    io started
    emc/iotask/ioControl.cc 752: can't load tool table.
    halcmd loadusr io started
    Loading cape-universal overlay to /sys/devices/bone_capemgr.9/slots
    X11 connection rejected because of wrong authentication.
    PRU control files not found in /sys/class/uio/uio0
    bipod.hal:10: program './setup.sh' failed, returned 1
    Shutting down and cleaning up Machinekit...

