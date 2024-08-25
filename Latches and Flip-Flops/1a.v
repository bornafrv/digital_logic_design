`timescale 1ns/1ns
module SRlatch1a(input S, R, in, output Q, Qb);
	nand #(12) N3(Q, S, in, Qb);
	nand #(8) N2(Qb, R, Q);
endmodule

module SRlatch2inputs(input S, R, output Q, Qb);
	nand #(8) N21(Q, S, Qb);
	nand #(8) N22(Qb, R, Q);
endmodule

module SRlatch3inputs(input S, R, in1, in2, output Q, Qb);
	nand #(12) N31(Q, S, in1, Qb);
	nand #(12) N32(Qb, R, in2, Q);
endmodule