`timescale 1ns/1ns
module ALU_behavioral_synth_bonus_TB();
	reg [15:0] aa, bb;
	reg cc;
	reg [2:0] func;
	wire [15:0] ww;
	wire zz, nn;
	ALU_behavioral_synth my_ALU_synth (aa, bb, cc, func, ww, zz, nn);
	initial begin
		#100 aa = 16'd0; bb = 16'd0; cc = 1'b0; func = 3'd0;
		repeat(1000000000) #100 {aa, bb, cc, func} = $random;
		#100 $stop;
	end
endmodule
