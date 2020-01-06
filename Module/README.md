# UW-IDEA_AnalogTestCases

-------------------
Modules
-------------------

----------------------------
 The modules for the SAR ADC
 ---------------------------

| Module       | Cell               | Function           |
| :-------------:| ------------------ | -------------------|
| 5b_ADC | 5b coarse SAR ADC | Compute the 5-bit MSBs using merged capacitor switching (MCS) method |
| BTSW | Bootstrapped Switch | Sample input on to CDAC |
| CDAC_Switch | CDAC Switch for the Coarse SAR ADC | Convert output digit to its analog signal and then subtracted from input |
| CK_Divider8	        | Clock Divider by 8	|Generate complementary clock to drive DLPF, Comparison enable signal, and reference clock
| Coarse_Comp_CK | Coarse Comparator Clock Generator  | Generate clock for the comparator |
| Coarse_SAR_Logic | SAR Logic | Generate control signal for the CDAC and store output digits from comparator |

-------------------------------------
The modules for the temperature sensor
--------------------------------------
| Module       | Cell               | Function           |
| :-------------:| ------------------ | -------------------|
| DLPF_RCFilter         | 	CDAC Embedded DLPF | 	The sensing element with embedded CDAC
| EdgeComparator        | 	Edge Comparator	| To compare the crossing point with the reference clock
| LevelCrossingDetector	| Level Crossing Detector	| To compare the crossing point with the reference clock
| ResTune_Configure	    | Resistance Tuning Configuration | 	Logic to tune resistance in the DLPF

-------------------------------------
The modules for the transmitter are in the folder transmitter
--------------------------------------
