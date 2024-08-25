module ALU_structual(input signed [15:0]inA, inB, input inC, input [2:0]opc, output reg [15:0]outW, output zer, neg);
	reg [15:0] A, B, add_out;
	reg c;
	assign A = (opc == 3'b000) ? ~inA : inA;
	assign B = (opc == 3'b010) ? inB :
		   (opc == 3'b011) ? (inB >>> 1) : 16'b1;
	assign c = (opc == 3'b010) ? inC : 1'b0;
	assign add_out = A + B + c;
	always @(inA, inB, opc, add_out) begin
		outW = 16'b0;
		case(opc)
			3'd0: outW = add_out;
			3'd1: outW = add_out;
			3'd2: outW = add_out;
			3'd3: outW = add_out;
			3'd4: outW = inA & inB;
			3'd5: outW = inA | inB;
			3'd6: outW = {inA[7:0], inB[7:0]};
			default: outW = 16'b0;
		endcase
	end
	assign zer = ~|outW;
	assign neg = outW[15];
endmodule