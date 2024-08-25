`timescale 1ns/1ns
module DFlipFlopTB2();
	reg DD, cc = 1'b0;
	wire QQ, Qbb;
	DFlipFlop2 DFF(DD, cc, QQ, Qbb);
	always #100 cc <= ~cc;
	initial begin
		DD = 0;
		#50 DD = 1;
		#100 DD = 0;
		#150 DD = 1;
		#250 DD = 0;
		#500 DD = 1;
		#50 DD = 0;
		#100 $stop;
	end
endmodule