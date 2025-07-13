`timescale 1ns / 1ps
`include "uni_shift_reg.v"
module uni_shift_reg_tb;
	reg clk;
	reg reset;
	reg [1:0] mode;
	reg serial_in_left;
	reg serial_in_right;
	reg [3:0] parallel_in;
	wire [3:0] q;

    // Instantiate the module
    uni_shift_reg uut (
        .clk(clk),
        .reset(reset),
        .mode(mode),
        .serial_in_left(serial_in_left),
        .serial_in_right(serial_in_right),
        .parallel_in(parallel_in),
        .q(q)
    );

    // Generate clock
    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t mode=%b q=%b", $time, mode, q);

        // Initial values
        clk = 0; reset = 1;
        serial_in_left = 1;
        serial_in_right = 0;
        parallel_in = 4'b1010;

        // Reset
        #10 reset = 0;

        // Parallel Load
        mode = 2'b11; #10;

        // Hold
        mode = 2'b00; #10;

        // Shift Right
        mode = 2'b01; #10;
        #10;

        // Shift Left
        mode = 2'b10; #10;
        #10;

        $finish;
    end

endmodule
	
