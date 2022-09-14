//`timescale 1ps/1ps
module pd(
	input real d, 
	input wire dclk,
	input wire eclk,
	input rst,
	output wire e,l);

//reg d1,d0,e0,e0_dff;
reg d1,d0,e0,d1_dff,d0_dff,e0_dff;

always @ (posedge dclk or posedge rst) begin 
	if (rst) begin
		d1 <= 1'b0;
	end else if (d>0.5) begin
		d1 <= 1'b1;
	end
	else begin
		d1 <= 1'b0;
	end
end

always @ (posedge dclk or posedge rst) begin
	if (rst) begin
		d0 <= 1'b0;
	end
	else begin
		d0 <= d1;
	end
end

always @ (posedge eclk) begin
	if (rst) begin
		d1_dff <= 1'b0;
	end else begin
		d1_dff <= d1;
	end
end

always @ (posedge eclk) begin
	if (rst) begin
		d0_dff <= 1'b0;
	end else begin
		d0_dff <= d0;
	end
end

always @ (posedge eclk) begin
	if (rst) begin
		e0 <= 1'b0;
	end else if (d>0.5) begin
		e0 <= 1'b1;
	end
	else begin
		e0 <= 1'b0;
	end
//	e0 <= d;
end

always @ (posedge eclk) begin
	if (rst) begin
		e0_dff <= 1'b0;
	end else begin
		e0_dff <= e0;
	end
end

//assign #10 e = d1^e0_dff;
//assign #10 l = d0^e0_dff;

assign #10 e = d1_dff^e0_dff;
assign #10 l = d0_dff^e0_dff;

endmodule
