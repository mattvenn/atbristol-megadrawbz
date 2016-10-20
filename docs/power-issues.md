# Thu Oct 20 11:45:22 CEST 2016

trying to track down spurious power downs:

tried with a brand new beagleboard and this happened within 5 mins!

on terminal:

    Broadcast message from root@devel (Sun Apr 10 20:26:04 2016):

    Power button pressed 
    The system is going down for system halt NOW!

http://bugs.elinux.org/issues/85

trying this:
http://unix.stackexchange.com/questions/114535/system-is-going-down-for-reboot-now

and got this:

    root       575     1  0 11:41 ?        00:00:00 /usr/sbin/acpid
    root     11680   575  0 13:10 ?        00:00:00  \_ /bin/sh -c
    /etc/acpi/powerbtn-acpi-support.sh
    root     11681 11680  0 13:10 ?        00:00:00      \_ /bin/sh
    /etc/acpi/powerbtn-acpi-support.sh
    root     11721 11681  0 13:10 ?        00:00:00          \_ /bin/bash
    /sbin/shutdown -h -P now Power button pressed
    root     11723 11721  0 13:10 ?        00:00:00              \_ ps -ef --forest


So it's a bug in the hardware or software, but easy to fix.
