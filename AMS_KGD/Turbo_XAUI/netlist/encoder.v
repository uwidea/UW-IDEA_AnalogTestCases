module encoder(
	input wire [1:0] ea,
	input wire [1:0] la,
	input wire clk_cont, 
	input wire rst, 
	output reg comp,
	output reg equal);

always @ (posedge clk_cont or posedge rst) begin
	if (rst) begin
		comp <= 1'b0;
		equal <= 1'b1;
	end else if (ea > la) begin
		comp <= 1'b1;
		equal <= 1'b0;
	end else if (ea < la) begin
		comp <= 1'b0;
		equal <= 1'b0;
	end else begin 
		comp <= comp;
		equal <= 1'b1;
	end
end

endmodule
