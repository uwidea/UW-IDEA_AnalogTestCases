
module cdr (
	input real d, 
	input wire clk0,clk90,clk180,clk270,
	input wire rst,
	output wire clk,clkb);

wire  e,l;
wire dclk,eclk;
wire clk_cont;
wire [1:0] ea,la;
wire comp, equal;
wire up,down;
reg [5:0] vs;

assign dclk=clk;
assign eclk=clkb;

pd pd1(
	.d(d),
	.dclk(dclk),
	.eclk(eclk),
	.rst(rst),
	.e(e),
	.l(l));

/*always @(*) begin
	if (e==l) 
		equal=1'b1;
	else
		equal=1'b0;
	comp=e;
end
*/

mvl mvl1(
	.early(e),
	.late(l),
	.clk(eclk),
	.rst(rst),
	.clk_cont(clk_cont),
	.ea(ea),
	.la(la));

encoder enc1(
	.ea(ea),
	.la(la),
	.clk_cont(clk_cont),
	.rst(rst),
	.comp(comp),
	.equal(equal));

fsm fsm1(
	.comp(comp),
	.equal(equal),
	.clk_cont(clk_cont),
	.rst(rst),
	.up(up),
	.down(down));

always @(posedge clk_cont or posedge rst) begin
	if (rst) 
		vs=6'b001000;
	else 
		vs=vs+{5'b00000,up}-{5'b00000,down};
end

pi pi1(
	.vs(vs),
	.clk0(clk0),
	.clk90(clk90),
	.clk180(clk180),
	.clk270(clk270),
	.out(clk),
	.outb(clkb));

	
endmodule	
