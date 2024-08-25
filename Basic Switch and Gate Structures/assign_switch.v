`timescale 1ns/1ns
module assign_switch(input a, b, c, output y1, y0);
	assign #(15) y1 = (a & (b | c)) | (b & c);
	assign #(21) y0 = (~a & ((~b & c) | (b & ~c))) | (a & ((b & c) | (~b & ~c)));
endmodule
