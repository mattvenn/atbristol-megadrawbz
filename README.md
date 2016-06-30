# @bristol energy drawing robot

## updates

* [youtube playlist](https://www.youtube.com/playlist?list=PLmcDgdDpcaPiOdnMplbk7o1K5Kpvp_UAL)

## details

### hardware

* [Beagle bone breakout board](hardware/bbbbbb_pcb/)
* [Pen holder](hardware/gondola_pcb/)

### machinekit/linuxcnc configuration

* Robot is controlled with machinekit running on a beaglebone black.
* Pen holder is controlled via Xbee radio and uses a [custom component] that runs in its own realtime thread.

* [configuration](machinekit-bipod)

### firmware

* [pen holder firmware](firmware/gondola/)

### tests

* [prototypes, tests, proof of concepts](tests)
