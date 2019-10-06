# pa3gyf-gpsdocxo-2016
GPS-Disciplined OCXO

After (a.o.) G3RUH and G4HUP, with PA3GYF additions for monitoring GPS (FIX) status, extra isolation of the (sine) output signals from the PLL, monitoring OCXO heater, monitoring PLL LOCK status, manual frequency tuning (stand-alone OCXO) and stand-alone GPS operation.
Includes front and rear panel designs (Schaeffer Front-Panel Designer) and Arduino firmware,
both for Arduino Uno and Arduino Micro.

## Background

At around 2016, I decided to pick up my RF electronics and HAM hobby again after a decade (at least) absence,
and I decided to build a GPS-disciplined OCXO in order to regain lost skills.
I wanted a precision frequency reference and had struggled for years with a DCF77 circuit that never
seemed to lock. As I was able to purchase a large amount of (HP) test equipment (around 2013),
a stable frequency reference turned out to be the ideal restart project for me.

I designed and built most of the circuit in 2016 and early 2017, but never took the time to
properly test and document it. As an autumn 2019 winter project, I finished latest testing and modifications,
wrote the documentation
and submitted everything to github (before that, the repo contained photos only).

## Credits

The core design of this project, the PLL circuitry including the loop filter, was shamelessly stolen
from G3RUH; the distribution amplifier is an unmodified unit (bought) from G4HUP.

My main (modest) contributions have been the extension of the core design with monitoring and control functions,
such as monitoring whether or not the GPS receiver has a fix,
monitoring the lock status of the PLL,
RS-232C interfacing to the GPS receiver,
front-panel and rear-panel designs,
and Arduino firmware code, including an algorithm for deciding upon PLL-lock
from monitoring the OCXO tune voltage.

In addition, I changed (improved?) the interfacing between the OCXO and the PLL by
introducing an isolator for separation of the PLL and output signals from the OCXO,
and designed and implemented a Low-Noise Amplifier for the OCXO signal in case (well, almost always)
the OCXO is insufficient to properly activate the Schmitt-Triggers of the PLL circuit.

## Conclusion

Designing and realizing this project has been a true joy!

## Future

Currently, my interest has somewhat shifted towards the accuracy of power reading of my equipment,
so I do not expect updates soon.

However, it is still on my wishlist to use an ADC with higher resolution and accuracy than the Arduino
10-bit circuits in order to assess PLL lock status.
Also, I want to study the PLL status by simply counting the pulses on both
inputs over varying intervals, in order to more accurately quantify the PLL locked status (e.g., 10-4 over
the last second, 10-6 over the past 10 minutes, 10-7 over the past hour, etc.).
I would also love to improve the RS232-C circuit in such a way that it can be used directly as an
input to Linux gpsd and ntp/chrony as a PPS-capable time source.
At the present time, this does not work.
Finally, I would love an Ethernet interface for monitoring and control of the unit.

Unfortunately, at the present time, two hurdles would need to be taken.
First, the availability of the required GPS receiver is (AFAICT) close to zero,
and I would have to switch to 1PPS use.
Second, the memory availability on the current Arduino models is really WAY TOO LOW.
I almost forgot what the K symbol means in a computer-memory context.

So, all in all, it might be better to wait for more powerful Arduino models,
and perhaps think of a 1 PPS design.

Who knows...

## License

All my parts, both hardware and software, have been released under Apache Commons License V2.

## 73

Jan (pa3gyf)
