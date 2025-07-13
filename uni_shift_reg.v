module uni_shift_reg(
	input clk,
	input reset,
	input [1:0] mode,
	input serial_in_left,
	input serial_in_right,
	input [3:0] parallel_in,
	output reg [3:0] q
);

always @ (posedge clk or posedge reset) begin
	if (reset)
		q <= 4'b0000;
	else begin
		case (mode) 
			2'b00 : q <= q;
			2'b01 : q <= {serial_in_right, q[3:1]};
			2'b10 : q <= {q[2:0], serial_in_left};
			2'b11 : q <= parallel_in;
			default : q <= q;
		endcase
	end
end

endmodule 

