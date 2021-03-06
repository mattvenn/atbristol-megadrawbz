# @bristol energy drawing robot

## updates

* [youtube playlist](https://www.youtube.com/playlist?list=PLmcDgdDpcaPiOdnMplbk7o1K5Kpvp_UAL)
* [photos](https://goo.gl/photos/KGhmjEyrZScbemvW7)

## details

### hardware

* [Beagle bone breakout board](hardware/bbbbbb_pcb/)
* [Pen holder](hardware/gondola_pcb/)
* [notes on stepper choice](tests/stepper-choice)

### machinekit/linuxcnc configuration

* Robot is controlled with machinekit running on a beaglebone black.
* Pen holder is controlled via Xbee radio and uses a [custom component] that runs in its own realtime thread.

* [configuration](https://github.com/mattvenn/machinekit-bipod)

### firmware

* [pen holder firmware](firmware/gondola/)

### tests

* [prototypes, tests, proof of concepts](tests)
