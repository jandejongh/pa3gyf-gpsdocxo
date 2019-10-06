# pa3gyf-gpsdocxo-2016
GPS-Disciplined OCXO

After (a.o.) G3RUH and G4HUP, with PA3GYF additions for monitoring GPS (FIX) status, extra isolation of the (sine) output signals from the PLL, monitoring OCXO heater, monitoring PLL LOCK status, manual frequency tuning (stand-alone OCXO) and stand-alone GPS operation.
Includes front and rear panel designs (Schaeffer Front-Panel Designer) and Arduino firmware,
both for Arduino Uno and Arduino Micro.

## Background

At around 2016, I decided to pick up my RF electronics and HAM hobby again after a decade (at least) absence,
and I decided to build a GPS-disciplined OCXO in order to regain lost skills.
I wanted a precision frequency reference and struggled for years with a DCF77 circuit that never
seemed to lock. As I was able to purchase a large amount of (HP) test equipment (around 2013),
a stable frequency reference turned out to be the ideal restart project for me.

I designed and built most of the circuit in 2016 and early 2017, but never took the time to
properly test and document it. As an autumn 2019 winter project, I finished the documentation
and submitted everything to github (before that, the repo contained photos only).

## Credits

The core design of this project, the PLL circuitry including the loop filter, was shamelessly stolen
from G3RUH; the distribution amplifier is an unmodified unit (bought) from G4HUP.
My main (modest) contributions have been the extension of the core design with monitoring and control functions,
such as monitoring whether or not the GPS receiver has a fix,
monitoring the lock status of the PLL,
RS-232C interfacing to the GPS receiver,
front-panel and rear-panel designs,
and Arduino firmware code.

## License

All my parts, both hardware and software, have been released under Apache Commons License V2.

## 73

Jan (pa3gyf)
