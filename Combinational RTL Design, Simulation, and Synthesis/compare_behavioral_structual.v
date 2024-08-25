`timescale 1ns/1ns
module compare_behavioral_structual();
	reg [15:0] aa, bb;
	reg cc;
	reg [2:0] func;
	wire [15:0] wwb, wws;
	wire zzb, nnb, zzs, nns;
	ALU_behavioral behavioral_ALU (aa, bb, cc, func, wwb, zzb, nnb);
	ALU_structual structual_ALU (aa, bb, cc, func, wws, zzs, nns);
	initial begin
		#100 aa = 16'd0; bb = 16'd0; cc = 1'b0; func = 3'd0;
		repeat(7) begin
			#200 func = func + 1'b1;
			repeat(10) #100 {aa, bb, cc} = $random;
		end
		#100 $stop;
	end
endmodule
