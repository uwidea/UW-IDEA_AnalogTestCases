module cdr_tb();

real d;
reg clk0;
wire clk90, clk180, clk270;
reg rst;
wire clk,clkb;

integer fd;

cdr cdr1(
	.d(d),
	.clk0(clk0),
	.clk90(clk90),
	.clk180(clk180),
	.clk270(clk270),
	.rst(rst),
	.clk(clk),
	.clkb(clkb));

always #320 clk0=!clk0;
assign #160 clk90=clk0;
assign #320 clk180=clk0;
assign #160 clk270=clk180;

always #640 d=1.0-d;

initial begin
	$vcdpluson;
    $vcdplusmemon;

	rst=1'b1;
	d=0.0;
	clk0=1'b0;
	#4150
	rst=1'b0;
	#1000000
	$finish;
end

always @(posedge clk) begin
//	$fwrite(fd,"%d\n", cdr1.vs);
end
endmodule
