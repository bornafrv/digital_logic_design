`timescale 1ns/1ns
module oc_7_assign(input a, b, c, d, e, f, g, output w2, w1, w0);
	wire p1, p0, q1, q0, r;
	assign_switch oc1(a, b, c, p1, p0);
	assign_switch oc2(d, e, f, q1, q0);
	assign_switch oc3(p0, q0, g, r, w0);
	assign_switch oc4(p1, q1, r, w2, w1);
endmodule
