`timescale 1ns/1ns
module oc_7_tbench();
	reg aa, bb, cc, dd, ee, ff, gg;
	wire ww2, ww1, ww0;
	oc_7 oc(aa, bb, cc, dd, ee, ff, gg, ww2, ww1, ww0);
	initial begin
		aa = 0; bb = 0; cc = 0; dd = 0; ee = 0; ff = 0; gg = 0;
		#100 aa = 1;
		#100 bb =  1;
		#100 ee =  1;
		#100 gg =  1;
		#100 ee =  0;
		#100 ff =  1;
		#100 gg =  0;
	end
endmodule