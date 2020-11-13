### Appliance 1: Water heater

![Captured power signature 1](src/images/Heater.png){ width=65% #fig:signature-1 }

The power signature in [@fig:signature-1] starts off with a peak on all three phases to about 17A with phase three surpassing it and reaching 30A. After approximately seven minutes the green phase switches place with the red phase. This change happenes again after another seven minutes. The current then falls sharply after a total duration of 25 minutes.

As the load is spread across all three phases it is unlikely to be a plugged in appliance as common sockets only provide access to a single phase. While there are high-power sockets like the one specified by DIN VDE 0623 they are usually not available in households as most appliances require less than $16A * 240V = 3600W$ of power. This reduces the number of possible appliances as they likely have to be installed permanently to gain access to all three phases. The best contender is an electric water heater and given the duration of the power signature it is likely being used for a long shower (handwashing, dishwashing, or other types of hot water usage are unlikely to take half an hour of constant water flow).

To verify this, the author took a shower for 25 minutes during a time period where no other inhabitants were present. The resulting data can be seen in [@fig:signature-shower] which mostly matches the original signatures. The overall draw is equal and the switching between phases is similar although the green phase has been used for a shorter time period for unknown reasons.

![Water heater signature](src/images/Heater-confirmation.png){ width=65% #fig:signature-shower }

\FloatBarrier
