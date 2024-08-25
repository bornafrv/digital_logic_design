`timescale 1ns/1ns
module gate_level_3inputs(input a, b, c, output y1, y0);
	wire d, e, f, g, h, i, j, k, l, m, n;
	and #(5, 7) A1(e, a, d), A2(f, b, c), A3(g, ~b, c), A4(h, b, ~c), A5(j, b, c), A6(k, ~b, ~c), A7(m, i, ~a), A8(n, l, a);
	or #(5, 3.5) O1(d, b, c), O2(y1, e, f), O3(i, g, h), O4(l, j, k), O5(y0, m, n);
endmodule