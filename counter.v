`timescale 1ns / 1ps
`default_nettype none

module counter(
	input  wire	sysclk,
	input  wire	step_a,
	input  wire	step_b,
	output reg	q = 1'b0
	);

	reg q_n = 1'b1;
	always @(posedge sysclk) begin
		if (step_a)	q <= ~q_n;
		if (step_b) q_n <= q;
	end

endmodule
