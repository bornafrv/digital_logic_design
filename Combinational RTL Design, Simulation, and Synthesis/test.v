module test (input a, b, c, output w);
	assign w = (~a&b&c) | (a&b&c) | (~b&~c);
endmodule