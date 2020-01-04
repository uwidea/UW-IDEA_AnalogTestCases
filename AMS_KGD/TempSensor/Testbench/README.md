To test the temperature sensor, one DC voltage for supply from 1.0 to 1.2V, a 32MHz pulse signal with 50% duty cycle for the clock, 
and one pulse signal for presetting the sensor are needed. The 9-bit digital output is input to an ideal DAC to convert it to decimal 
numbers. The pin information is summarized in the table below.

| Pin Name | Input/Output | Specification|
| :------------:| ------------------ | -------------------|
| AVDD     | Input | Power supply, 1.0~1.2V|
| AVSS  | Input |Ground |
| PRESET |Input | A pulse signal to pre-set the temperature sensor|
| CKIN  | Input | A 32MHz 50% duty cycle clock |
| CFG<7:0> | Input | Only 1-bit can be high, from SPI, these pins are used to configure the resistance in the DLPF|
| CFG<15:14> | Input | 4 possible combinations, from SPI, to control the delays in the signal and reference path |
| DONE | Ouput | Notify one conversion is done |
| D<8:0> | Output | A 9-bit output code that represents temperature |
