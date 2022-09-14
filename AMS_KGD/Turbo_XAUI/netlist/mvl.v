module mvl(
	input wire early,
	input wire late, 
	input wire clk, 
	input wire rst,
	output wire clk_cont,
	output reg [1:0] ea,
	output reg [1:0] la);

reg [2:0] s;
wire c_rst;
wire [1:0] counter_ea, counter_la;

always @ (posedge clk or posedge rst) begin
	if (rst) begin
		s <= 3'b000;
	end
	else begin
		s <= s + 3'b001;
	end
end

assign clk_cont=s[2];
assign c_rst= rst || ((s==3'b101)? 1'b1:1'b0);

counter counter1 (
	.in(early),
	.clk(clk),
	.rst(c_rst),
	.out(counter_ea));

counter counter2 (
	.in(late),
	.clk(clk),
	.rst(c_rst),
	.out(counter_la));
	
always @(posedge clk_cont or posedge rst) begin
	if (rst) begin
		ea <= 2'b00;
		la <= 2'b00;
	end else begin
		ea <= counter_ea;
		la <= counter_la;
	end
end

endmodule
