module counter(
	input wire in,
	input wire clk,
	input wire rst,
	output reg [1:0] out);

always @ (posedge clk or posedge rst) begin
//	out <= in[0]+in[1]+in[2]+in[3]+in[4]+in[5]+in[6]+in[7];
	if (rst) begin
		out <= 2'b00+{1'b0,in};
	end
	else begin
		out <= out+{1'b0,in};
	end
end

endmodule

	
