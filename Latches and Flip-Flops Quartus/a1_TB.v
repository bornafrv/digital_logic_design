`timescale 1ns/1ns
module Detector_Tb();
	wire ww;
	reg clk = 1'b0, rst = 1'b0, jj = 1'b1;
	Detector detector1(clk, rst, jj, ww);
	always #100 clk <= ~clk;
	initial begin 
		#150 jj = 0;
		#180 jj = 1;
		#1000 jj = 0;
		#300 jj = 1;
		#100 $stop;
	end
endmodule
