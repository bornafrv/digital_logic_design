`timescale 1ns/1ns
module oc_15(input a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, output w3, w2, w1, w0);
	wire p2, p1, p0, q2, q1, q0, x0, x1;
	oc_7 oc1(a, b, c, d, e, f, g, p2, p1, p0);
	oc_7 oc2(h, i, j, k, l, m, n, q2, q1, q0);
	One_Counter oc3(o, q0, p0, x0, w0);
	One_Counter oc4(x0, q1, p1, x1, w1);
	One_Counter oc5(x1, q2, p2, w3, w2);
endmodule