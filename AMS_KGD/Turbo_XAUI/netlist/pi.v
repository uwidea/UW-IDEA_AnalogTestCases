//`timescale 1ps/1ps
module pi(
	input wire [5:0] vs,
//	input wire en,
	input wire clk0, clk90, clk180, clk270,
//	input wire clk0,
	output reg out, outb);
/*
wire [15:0] code,sel;
wire [1:0] quad;

b2t b2t1(
	.b(vs),
	.t(code));

assign sel=code^{16{vs[4]}};
assign quad[1]=vs[5]^vs[4];
assign quad[0]=vs[5];

always @ (*) begin
	case(quad)
		2'b00:out=clk0;
		2'b01:out=clk270;
		2'b11:out=clk180;
		2'b10:out=clk90;
	endcase
end
*/
/*
assign out=clk0;
assign outb=!out;

specify 
	if (vs==6'b000000)(clk0=>out)=(1);
	else if (vs==6'b100000)(clk0=>out)=(160);
endspecify
*/

always @ (vs or clk0 or clk90 or clk180 or clk270) begin
	case (vs)
		6'b000000: #5 out=clk0;
		6'b000001: #15 out=clk0;
		6'b000010: #25 out=clk0;
		6'b000011: #35 out=clk0;
		6'b000100: #45 out=clk0;
		6'b000101: #55 out=clk0;
		6'b000110: #65 out=clk0;
		6'b000111: #75 out=clk0;
		6'b001000: #85 out=clk0;
		6'b001001: #95 out=clk0;
		6'b001010: #105 out=clk0;
		6'b001011: #115 out=clk0;
		6'b001100: #125 out=clk0;
		6'b001101: #135 out=clk0;
		6'b001110: #145 out=clk0;
		6'b001111: #155 out=clk0;
		6'b010000: #5 out=clk90;
		6'b010001: #15 out=clk90;
		6'b010010: #25 out=clk90;
		6'b010011: #35 out=clk90;
		6'b010100: #45 out=clk90;
		6'b010101: #55 out=clk90;
		6'b010110: #65 out=clk90;
		6'b010111: #75 out=clk90;
		6'b011000: #85 out=clk90;
		6'b011001: #95 out=clk90;
		6'b011010: #105 out=clk90;
		6'b011011: #115 out=clk90;
		6'b011100: #125 out=clk90;
		6'b011101: #135 out=clk90;
		6'b011110: #145 out=clk90;
		6'b011111: #155 out=clk90;
		6'b100000: #5 out=clk180;
		6'b100001: #15 out=clk180;
		6'b100010: #25 out=clk180;
		6'b100011: #35 out=clk180;
		6'b100100: #45 out=clk180;
		6'b100101: #55 out=clk180;
		6'b100110: #65 out=clk180;
		6'b100111: #75 out=clk180;
		6'b101000: #85 out=clk180;
		6'b101001: #95 out=clk180;
		6'b101010: #105 out=clk180;
		6'b101011: #115 out=clk180;
		6'b101100: #125 out=clk180;
		6'b101101: #135 out=clk180;
		6'b101110: #145 out=clk180;
		6'b101111: #155 out=clk180;
		6'b110000: #5 out=clk270;
		6'b110001: #15 out=clk270;
		6'b110010: #25 out=clk270;
		6'b110011: #35 out=clk270;
		6'b110100: #45 out=clk270;
		6'b110101: #55 out=clk270;
		6'b110110: #65 out=clk270;
		6'b110111: #75 out=clk270;
		6'b111000: #85 out=clk270;
		6'b111001: #95 out=clk270;
		6'b111010: #105 out=clk270;
		6'b111011: #115 out=clk270;
		6'b111100: #125 out=clk270;
		6'b111101: #135 out=clk270;
		6'b111110: #145 out=clk270;
		6'b111111: #155 out=clk270;
	endcase
end

assign outb=!out;
endmodule
