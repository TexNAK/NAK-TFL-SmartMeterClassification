### Appliance 2: Refrigerator

![Captured power signature 2](src/images/Refrigerator.png){ width=65% #fig:signature-2}

This power signature has been discovered during the night where close to no other interference was observable. It is shown in [@fig:signature-2] and repeats seven times in the shown time window. It starts with a small bump of less than 0.1A, continues with a pause and then has a larger sub-signature. This sub-signature starts with a peak, which is presumably varying in intensity due to the slow sampling rate, then exhibits a roughly constant use and finishes with a smooth decline back to the baseline.

The initial surge followed by a roughly constant load of the sub-signature suggests that the appliance is a primarily inductive load like for example an electric motor. As it is operating in a regular pattern even during the night and expected to contain a motor, it is unlikely to be appliances like a garage door or electric window blinds. A likely contender is some sort of cooling appliance. It would contain a compressor which uses a motor, have a constant influx of heat which causes it to frequently and more importantly regularly turn on for a short time period. The fact that there are two sub-signatures might indicate that it is either two cooling appliances or one combined unit with two individual compressors.

Since cooling appliances can not be turned off for prolonged time periods without spoiling their contents, a different method for validation is required. Since the pattern is fairly regular and expected to be based on the heat influx, opening the refrigerator should yield a decreased interval. The resulting power graph can be seen in [@fig:signature-refrigerator]. The appliance has been left running uninterrupted for a few hours and has been opened at 11:55. As expected, the compressor turned on shortly after audibly and the power graph shows the pattern repeating earlier.

![Refrigerator signature](src/images/Refrigerator-confirmation-opened.png){ width=65% #fig:signature-refrigerator }

\FloatBarrier
