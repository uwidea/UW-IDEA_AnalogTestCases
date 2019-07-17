===============================================
A 12-bit Segmented SAR ADC in TSMC 65nm LP CMOS
===============================================

1.	The circuit to be tested
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The cell view of the circuit to be tested is called 12b_ADC_TOP. Its schematic is printed out in the schematic file <https://github.com/uwidea/UW-IDEA_AnalogTestCases/blob/master/AMS_KGD/SAR_ADC/UW_65nm_SARADC_Apr_2019/UW_12b_SARADC_Hierarchical_Schematics_pdf/ADC_Layout_12b_ADC_Top_schematic.pdf> in the file folder UW_12b_SARADC_Hierarchical_Schematics_pdf. Its symbol is shown in Figure 1. 

.. image :: images/image001.png
Figure1. The symbol of the 12b_ADC_TOP. 

The pin definition is
- VIP, VIN: differential input pins to the ADC
- AVDD, AVSS: analog power supply and ground pins
- DVDD, DVSS: digital power supply and ground pins
- VRP, VRN, VCM: reference P, N and common mode level of the reference to the ADC
- CK_IN: sample clock to the ADC
- VCT_DLYF, VCT_DLY: control pins for tuning the delay in the fine and coarse asynchronous comparators, which are controlled by the on-chip SPI
- VRCTL: control pins for choosing either on-chip reference or off-chip reference, which is controlled by the on-chip SPI
- SPI_CHX_CKO: control pin to observe the output clock CKO It is controlled by the on-chip SPI
- N<1:4>, P<1:4>: for coarse comparator digital calibrations at N-side and P-side. They are controlled by SPI.
- DOUT<12:0>: digital outputs which have one redundant bit
- CKO: The output clock that can be either sample clock or the Done signal. It is controlled by SPI_CHX_CKO

2.	Power consumption and Dynamic Performance Simulation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
**2.1. Pre-layout simulation**

The testbench to test ADC power consumption and dynamic performance is “tb_ADC_single” shown in Figure 2. The ADE transient simulation setup is shown in Figure 3. The power consumption of analog, digital and reference are tested separately, their average currents are 9.9uA, 71.3uA, and 18.77uA, respectively. The dynamic performance is calculated in Figure 4. 

.. image :: images/image003.png

Figure 2. The testbench for the ADC power consumption and dynamic performance.

.. image :: images/image005.png

Figure 3. The ADE setup for the testbench in Figure 2.

.. image :: images/image007.png

Figure 4. The dynamic performance of the ADC in pre-layout simulation.

**2.2. Post-layout simulation**
The testbench for the post-layout simulation is the same as the pre-layout simulation shown in Figure 2. But with the cell 12b_ADC uses parasitic extraction netlist in calibre view. The simulated analog current I_A=19.52 uA, digital current I_D=146uA and the reference current is I_Ref=24.36uA. The dynamic performance is shown in Figure 5.

.. image :: images/image015.png

Figure 5. The dynamic performance of the ADC in post-layout simulation.
