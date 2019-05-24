# UW-IDEA_AnalogTestCases
Circuit release for Analog Test Cases from UW IDEA project.

<img src="https://github.com/uwidea/UW-IDEA_AnalogTestCases/blob/master/schema.png">

-------------------
Modules
-------------------

| Module       | Cell               | Function           |
| -------------| ------------------ | -------------------|
| CK_Divider8	          | Clock Divider by 8	|Generate complementary clock to drive DLPF, Comparison enable signal, and reference clock
| DLPF_RCFilter         | 	CDAC Embedded DLPF | 	The sensing element with embedded CDAC
| EdgeComparator        | 	Edge Comparator	| To compare the crossing point with the reference clock
| LevelCrossingDetector	| Level Crossing Detector	| To compare the crossing point with the reference clock
| ResTune_Configure	    | Resistance Tuning Configuration | 	Logic to tune resistance in the DLPF
