`timescale  1ns/1ns
module completeDFF3(input D, clk, clr, pre, output Q, Qb);
	wire i, ib, j, jb;
	SRlatch3inputs SR1(pre, clr, jb, clk, i, ib), SR2(clk, D, ib, clr, j, jb), SR3(pre, clr, ib, j, Q, Qb);
endmodule
