### Appliance 4: Mobile devices chargers

![Captured power signature 4](src/images/Charger.png){ width=65% #fig:signature-4 }

Next up is the signature in [@fig:signature-4]. At around 23:00 the current rises by roughly 0.1A which equates to 24W. It stays at the elevated level for approximately half an hour and then slowly declines back down over the next hour. This pattern is very typical for battery chargers [@lipo-charging-current1]. Especially lithium polymer batteries which are common in mobile devices like phones, tablets, and laptops are known to start with a high initial charging current until it reaches 80% capacity. From there it continues slowly trickle-charging with decreasing currents until the target voltage is reached [@lipo-charging-current2].

As mentioned previously, devices that come into question are phones, tablets, and laptops. Phones usually charge with a lower wattage of 8-12W unless they are employing a quick-charge technology like for example Qualcomm QuickCharge or USB-C PD. Laptops are usually using upwards of 80W of power unless it is a low-powered ultrabook. This leaves tablets as the remaining suspect. According to technical documentation from Apple, their high-end tablets charge with 2A at 9V which puts them at 18W. However, this is the output wattage and does not incorporate losses during transformation. Therefore it is reasonable to assume that the power signature belongs to a tablet being charged. Given the time of day, it sounds reasonable as well as the inhabitants might be heading to bed and plugging devices in for a charge overnight.

For verification, the 12.9" iPad Pro in the household will be discharged completely and then attached to the charger that was provided in the box. This will be performed during a time period when no other inhabitants are at home (in this case during the morning). The results can be seen in [@fig:signature-charger]. While the amplitude is ever so slightly higher and the duration of the high-current phase is longer, the overall shape matches the original. The amplitude might be different because the device has been charged using a different charger which is capable of slightly higher output. Since the device has been discharged fully prior to verification it is plausible that the duration is longer. It is unlikely that the device has been discharged fully at the end of the day.

![Mobile device charger signature](src/images/Charger-confirmation.png){ width=65% #fig:signature-charger }

\FloatBarrier
