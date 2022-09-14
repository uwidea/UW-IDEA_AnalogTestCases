module fsm(
	input wire comp,
	input wire equal, 
	input wire clk_cont,
	input wire rst,
	output reg up,
	output reg down);

reg [3:0] state, state_next;

always @(posedge clk_cont or posedge rst) begin
	if(rst) begin
		state <= 4'b0000;
	end
	else begin
		state <= state_next;
	end
end

always @(*) begin
	case(state)
		4'b0000: begin
			if (equal == 1'b1) begin
				state_next=state;
			end else if (comp == 1'b1) begin
				state_next=4'b0001;
			end else begin
				state_next=4'b1111;
			end
		end
		4'b0001: begin
			if (equal == 1'b1) begin
				state_next=state;
			end else if (comp == 1'b1) begin
				state_next=4'b0010;
			end else begin
				state_next=4'b1111;
			end
		end
		4'b0010: begin
			if (equal == 1'b1) begin
				state_next=state;
			end else if (comp == 1'b1) begin
				state_next=4'b0011;
			end else begin
				state_next=4'b1111;
			end
		end
		4'b0011: begin
			if (equal == 1'b1) begin
				state_next=state;
			end else if (comp == 1'b1) begin
				state_next=4'b0100;
			end else begin
				state_next=4'b1111;
			end
		end
		4'b1111: begin
			if (equal == 1'b1) begin
				state_next=state;
			end else if (comp == 1'b1) begin
				state_next=4'b0001;
			end else begin
				state_next=4'b1110;
			end
		end
		4'b1110: begin
			if (equal == 1'b1) begin
				state_next=state;
			end else if (comp == 1'b1) begin
				state_next=4'b0001;
			end else begin
				state_next=4'b1101;
			end
		end
		4'b1101: begin
			if (equal == 1'b1) begin
				state_next=state;
			end else if (comp == 1'b1) begin
				state_next=4'b0001;
			end else begin
				state_next=4'b1100;
			end
		end
		
		default: state_next=4'b0000;
	endcase
end
	
always @ (*) begin
	if (state==4'b0100) begin
		up=1'b1;
		down=1'b0;
	end else if (state==4'b1100) begin
		up=1'b0;
		down=1'b1;
	end else begin
		up=1'b0;
		down=1'b0;
	end
end

endmodule

 
