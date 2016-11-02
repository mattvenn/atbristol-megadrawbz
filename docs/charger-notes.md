# Tue Oct 18 14:46:19 CEST 2016

old charger (tp4506) and new (mcp73831) both can get stuck if the battery gets too low.
seems to be because xbee is drawing too much current so battery doesn't see enough

with xbee connected charge current is 0ma
with xbee disconnected is 10ma

current drawn on circuit is 50ma without xbee, 100 with. Why so high without?
should be about 6ma.

could be worth looking at xbee sleep modes before hacking on power control
(need to do ATSM1 to enable pin)

could also put a mosfet on the charger board that will not connect main board until vbatt > thresh

thoughts:
* 500ma maybe too high a charge current
* make sure charge sense pin can't do damage to atmega

charge sense pin on broken pcb seems shorted to ground, need to check the
old charger pcb

# Wed Oct 19 15:21:23 CEST 2016

why did charge pin get damaged?

* input higher than supply voltage?

charge sense pin was (I think - should have taken a photo before disconnecting)
connected to other side of diode. This voltage is then the diode drop over the
diode subtracted from the supply (which I think I cranked to about 5.5v - again
don't have a record). So about 3.6->4v. And the supply of the chip was 3.3v so
that was probably it.

The same will happen with the mcp73831 as the stat pin goes high when charge is
finished, the high level is vdd-1 so 4v.

# Wed Oct 19 17:39:25 CEST 2016

* questions - why current draw so high?
* why won't battery charger to higher than 3.8?

battery doc is 
http://es.rs-online.com/webdocs/141b/0900766b8141bf6b.pdf

# Thu Oct 27 18:51:30 CEST 2016

* discharged at 400ma till cutoff
* testing with 171ma current limit with battery fully discharged (v drops to
 3.7v)

start, gondola comes on, but has problems with comms:

inekit@devel:~/bipod$ halcmd  show | grep xbee
    94  User          0 xbee                                      18964 ready, u1:0 u2:0
    94        u32   OUT    0x00001AA8  xbee.cksum-err 0
    94        float OUT          0.26  xbee.gond_batt                   0.000010 0
    94        u32   OUT    0x0000AA6B  xbee.gond_err_count 0
    94        u32   OUT    0x00000000  xbee.gond_flags 0
    94        u32   OUT    0x00000000  xbee.gond_rx_count 0
    94        u32   OUT    0x00000000  xbee.gond_touch 0
    94        float IN              8  xbee.pos                         0.000010 0 <== zpos
    94        u32   OUT    0x0001280B  xbee.rx-err 0
    94        bit   IN           TRUE  xbee.servo_enable 0 ==> xbee.pos
    94        float RW             20  xbee.scale

comms problem fixed with start byte.

Also changed to 300mA charge current

# Wed Nov  2 09:22:05 CET 2016

[low-power-test.sh](low-power-test.sh) used to test what happens with constant
discharge and recharge at the cutoff point. 
[Results show no problems](low-power.log)
