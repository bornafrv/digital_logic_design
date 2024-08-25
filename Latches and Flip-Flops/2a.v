`timescale 1ns/1ns
module DFlipFlop2(input D, clk, output Q, Qb);
	wire i, ib, j, jb;
	SRlatch1a SR1(jb, clk, 1, i, ib), SR2(ib, D, clk, j, jb), SR3(ib, j, 1, Q, Qb);
endmodule
