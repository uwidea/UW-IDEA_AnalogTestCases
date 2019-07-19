# UW-IDEA_AnalogTestCases
------------------------------------------------------------
Circuit release for Analog Test Cases from UW IDEA project
------------------------------------------------------------

* All designs are fabricated and tested
* Contains hierarchical schematic, documentation and sanitized CDL netlist

---------
Circuits
---------
| Circuit       | Architecture               | Design Files           |
| :------------:| ------------------ | -------------------|
| SAR_ADC | 12b SAR ADC | SAR_ADC/UW_65nm_SARADC_Apr_2019 |
| DLDO | Digital LDO | DLDO/UW_65nm_DLDO_Apr_2019 |
| MDLL | Multiplying DLL  |	MDLL/UW_65nm_MDLL_Apr_2019 |
| TX | Transmitter | Transmitter/UW_65nm_Transmitter_Apr_2019 |
| TS | Temperature Sensor  | TempSensor/UW_65nm_TS_May_2019 |


--------
Modules
--------
| Module       | Cell               | Function           |
| :-------------:| ------------------ | -------------------|
| 5b_ADC | 5b coarse SAR ADC | Compute the 5-bit MSBs using merged capacitor switching (MCS) method |
| BTSW | Bootstrapped Switch | Sample input on to CDAC |
| CDAC_Switch | CDAC Switch for the Coarse SAR ADC | Convert output digit to its analog signal and then subtracted from input |
| CK_Divider8	        | Clock Divider by 8	|Generate complementary clock to drive DLPF, Comparison enable signal, and reference clock
| Coarse_Comp_CK | Coarse Comparator Clock Generator  | Generate clock for the comparator |
| Coarse_SAR_Logic | SAR Logic | Generate control signal for the CDAC and store output digits from comparator |
| DLPF_RCFilter         | 	CDAC Embedded DLPF | 	The sensing element with embedded CDAC
| EdgeComparator        | 	Edge Comparator	| To compare the crossing point with the reference clock
| LevelCrossingDetector	| Level Crossing Detector	| To compare the crossing point with the reference clock
| ResTune_Configure	    | Resistance Tuning Configuration | 	Logic to tune resistance in the DLPF
