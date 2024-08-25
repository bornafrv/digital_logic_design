`timescale 1ns/1ns
module transmitter_testbench();
	wire co, serialout;
	wire [7:0] qout;
	reg load = 1, clock = 0, enable = 0, reset = 0, serialin = 0;
	reg [7:0] qin;
	transmitter pos(co ,load, clock, enable, reset, qin, serialout, serialin, qout);
	always #100 clock <= ~clock;
	initial begin
		#50 qin = 8'b10110010;
		#70 serialin = 1;
		#50 enable = 1;
		#70 qin = 8'b00001011;
		#200 load = 0;
		repeat(20) #250 serialin = $urandom%2;
		#200 reset = 1;
		#300 $stop;
	end
endmodule