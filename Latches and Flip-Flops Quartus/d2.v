`timescale 1ns/1ns
module SerialTransmitterTB();
	reg start = 0, serIn = 0;
	reg clk = 0, rst = 0;
	wire Ready, serOut, out_valid;
	wire [2:0] upcounter;
	wire [7:0] downcounter, register;
	serial_transmitter_circuit pos(serOut, clk, rst, start, serIn, Ready, out_valid, downcounter, register, upcounter);
	always #100 clk = ~clk;
	initial begin
 		#130 start = 1;
		#210 start = 0;
		#210 serIn = 1;
		#210 serIn = 0;
		#210 serIn = 1;
		#1000 serIn = 0;
		#400 serIn = 1;
		#400 serIn = 0;
		#5000 $stop;
	end
endmodule