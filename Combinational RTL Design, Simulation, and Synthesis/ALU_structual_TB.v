`timescale 1ns/1ns
module ALU_structual_TB();
	reg [15:0] aa, bb;
	reg cc;
	reg [2:0] func;
	wire [15:0] ww, wws;
	wire zz, nn, zzs, nns;
	ALU_structual my_ALU (aa, bb, cc, func, ww, zz, nn);
	ALU_structual_synth my_ALU_synth (aa, bb, cc, func, wws, zzs, nns);
	initial begin
		#100 aa = 16'd0; bb = 16'd0; cc = 1'b0; func = 3'd0;
		repeat(7) begin
			#200 func = func + 1'b1;
			repeat(10) #100 {aa, bb, cc} = $random;
		end
		#100 $stop;
	end
endmodule
