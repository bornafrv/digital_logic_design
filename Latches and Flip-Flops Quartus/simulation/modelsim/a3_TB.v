`timescale 1ns/1ns
module Detector_prepossynt_Tb();
	wire ww_pre, ww_pos;
	reg clk = 1'b0, rst = 1'b0, jj = 1'b1;
	Detector pre(clk, rst, jj, ww_pre);
	Detector_pos pos(clk, rst, jj, ww_pos);
	always #100 clk <= ~clk;
	initial begin 
		#150 jj = 0;
		#180 jj = 1;
		#1000 jj = 0;
		#300 jj = 1;
		#100 $stop;
	end
endmodule
