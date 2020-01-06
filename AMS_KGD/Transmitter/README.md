-----------	
Prerequisite
-----------
*	This IP is designed in Cadence IC6.1.6.
*	User needs the standard libraries that are distributed by Cadence to read the schematics. 
*	This IP is designed under 65nm technology. This requires an NDA between the user and the foundry to access the design and the PDK.
*	The top-level cell is TX_8l12b. 
*	Simulation testbench is provided for top-level cell. 
*	Simulation is using ADE and Spectre. ADE views and Spectre states are provided.
*	Layout cells will be provided to the user under NDA for these cells. 

-----------
Description
-----------
This IP is a wireline transmitter with 12-bit 8-wire 8-level permutation coding. The proposed 12-bit 8-wire 8-level permutation coding scheme can improve pin efficiency to 150%, compared to 50% pin efficiency of the non-return-to-zero (NRZ) coding scheme. It is designed in 65nm technology node with a power supply voltage of 1.2V. 

Pin information: 
*	DINe & DINo: parallel digital inputs; 
*	Ibg: bias current;
*	CLKTXe & CLKTXo: clock input; 
*	ntx: common mode node of outputs;
*	CALIP & CALIN: digital inputs for driver calibration; 
*	EQUA_EN: digital control signals for equalizer;
*	Ta, Tb, …, Th: outputs of the transmitter;
*	DVDD, DVSS, AVDD, AVSS: power supply and ground. 
