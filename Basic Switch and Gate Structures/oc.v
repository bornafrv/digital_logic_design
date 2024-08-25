`timescale 1ns/1ns
module One_Counter(input a, b, c, output y1, y0);
	wire d, e, f, g, h, i, j, k, l, m, n, o, p;
	supply1 Vdd;
	supply0 Gnd;
	pmos #(5, 6, 7) T1(e, Vdd, ~a), T2(d, Vdd, ~b), T3(y1, d, ~c), T4(y1, e, ~b), T5(y1, e, ~c);
	nmos #(3, 4, 5) T6(y1, f, ~b), T7(y1, f, ~c), T8(f, Gnd, ~a), T9(f, g, ~c), T10(g, Gnd, ~b);
	pmos #(5, 6, 7) T11(h, Vdd, a), T12(k, Vdd, ~a), T13(i, h, b), T14(y0, i, ~c), T15(j, h, ~b), T16(y0, j, c), T17(l, k, ~b), T18(y0, l, ~c), T19(m, k, b), T20(y0, m, c);
	nmos #(3, 4, 5) T21(y0, n, b), T22(y0, n, ~c), T23(n, o, ~b), T24(n, o, c), T25(y0, o, a), T26(o, p, ~b), T27(o, p, ~c), T28(p, Gnd, b), T29(p, Gnd, c), T30(o, Gnd, ~a);
endmodule