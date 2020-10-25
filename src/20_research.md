# Existing research


### [@applianceStateMonitoringMLCoffeeRefrigerator]
- Single-Phase appliances state identified by ML algorithm
- Coffee machine making coffee
- Refrigerator running compressor

Shows that it is possible to determine individual appliance states in an isolated environment

### [@monitoringGlove]
- Glove that allows current sensing in three-phase wires
- Low-tech, unintrusive way to monitor

Allows to monitor building power consumption by access to electricity room (shared in case of apartments) or potentially sewers

### [@inexpensiveClassification]
- Smart meters that detect stuff are expensive
- Demand for appliance classification is rising
- Reasons to do it
	- Energy savings
	- Cost reductions
	- Activity recognition of reduced-autonomy residents
		- Deviations may be detected triggering an alert
- Lab conditions, non-intrusive meter, reproduced scenarios
- Definitions
	- Load signature
	- NIALM
- 1 Hz sampling
- Undetectable/Indistinguishable load signatures
	- TV, Lights, PC
	- Monitoring harmonics and thus power factor might help
- Detectable items (97% scenarios, 98.3% on/off events)
	- Stove burners
	- Electric kettle
	- Oven
	- Toaster
	- Range hood fan (stove fan thingy)
	- Coffee maker
	- Microwave
	- Hair dryer (two modes)
	- Blender
	- Mixer
	- Stereo
	- Refrigerator
- Noteworthy results
	- Active vs. Reactive power does give additional clues
	- Multi-phase loads make it easier
	- Device specific characteristics
		- e.g. Peak, constant, slow fall
	- Overlapping of devices makes it hard to identify using only active power
		- Three phase power system esp. in small households helps separate things
			- Load is usually distributed evenly
			- Heavy loads are usually isolated or multi-phase making it easier to detect smaller loads

### [@privacyTradeoff]
- Smart meter data is sensitive
	- Tradeoff between privacy and data usability
- Usage of data for customised real-time billing
- Proposes (and verifies) mechanism to remove sensitive appliance data

### [@listOfDevices1]
- 15min sampling
- In-circuit, metering method unspecified
- Easily identifiable
	- Refrigerator
	- Kettle
	- TV
- Some devices are hard to disambiguate

### [@combinedAnalysis]
- Combined analysis with external data yields more info

### [@healthCareUse]
- Use in healthcare & elderly care
- Habits identified by everyday routines
	- Discovering routines allows recognition of anomalous activities
	- May indicate people not being able to care for themselves anymore
- Managed to identify habits and routines
	- e.g. using computer while doing laundry

### [@trendsInApplianceUse]
- 5min sampling, 72 dwellings, 5 sites, 2 years
- Identified trends in appliance use
	- Increase in standby appliances
	- Appliance category increase (low, high but few medium)
- Understanding domestic energy usage

### [@householdOfficeSimilar]
- Households and offices are similar and may be treated the same way
- TODO Gain access to the paper for more

### [@circuitLevelMonitoring]
- Advantages of monitoring circuit level
	- No overshadowing of small devices
	- Room based classification
- Comparison against historical steady-state
	- Temporal relation is of importance

### [@slidingTimeWindow1]
- Using temporal contextual information improves recognition by up to ~10%
- Especially useful for devices that exhibit power spikes and specific patterns
	- Refrigerator / AC
	- Entertainment electronics

### [@slidingTimeWindow2]
- Two stage approach
	- Categorising appliances by harmonics and power factor
		- linear nonreactive
		- linear reactive
		- nonlinear reactive
	- Identify individual appliances in categories
- naive Bayes classifier
- ~87% accuracy
- Identifying devices turning on/off instead of their "presence"
- Harmonics and temporal patterns play a large role
	- Ref Kettle vs. Refrigerator harmonics and power factor ![image](https://www.mdpi.com/energies/energies-07-07041/article_deploy/html/images/energies-07-07041f6-1024.png)

### [@moreNumbers]
- ~23% error
- kNN+Bayes

### [@unsupervisedClustering]
- Provides method for unsupervised clustering of appliance features
- Verified with labelled data
- Seems promising

### [@algoComparison]
- 20-30% depending on algo
- Different features make for better results
	- Transient state signatures (high sampling freq. req.)
	- Steady state signatures
		- Harmonics (FFT on current)
		- Voltage-Current trajectory (2D mapping)
		- Current waveform distortion
		- Active vs. Reactive power variation
	- Appliance types
		- Binary (on/off)
		- Multistate
		- "Infinite"

\pagebreak
