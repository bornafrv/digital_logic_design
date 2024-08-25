`timescale 1ns/1ns
module counterreg_testbench();
	wire co;
	wire [2:0] q;
	wire [7:0] serialout;
	reg clock = 0, reset = 0, enable = 0, serialin = 0, set = 0;
	counterReg pos(co, set, clock, enable, reset, q, serialout, serialin);
	always #100 clock <= ~clock;
	initial begin
		#130 enable = 1;
		#50 set = 1;
		#200 set = 0;
		#40 serialin = $urandom%2;
		repeat(20) #200 serialin = $urandom%2;
		#200 reset = 1;
		#200 $stop;
	end
endmodule