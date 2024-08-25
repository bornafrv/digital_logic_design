`timescale 1ns/1ns
module controller(input clock, reset, start, w_det, co_8, co_down, output reg ready, en_det, en_8, set_8, en_down, ld_down);
	reg [2:0] ps, ns;
	parameter [2:0] Idle = 3'd0, Init = 3'd1, Detect = 3'd2, Upcount = 3'd3, Load = 3'd4, Downcount = 3'd5;
	always@(ps, start, w_det, co_8, co_down)begin
		ns = 3'd0;
		{ready, en_det, en_8, set_8, en_down, ld_down} = 6'b0;
		case(ps)
			Idle: begin ns = start ? Init : Idle; ready = 1;end
			Init: begin ns = start ? Init : Detect; set_8 = 1; en_det = 1;end
			Detect: begin ns = w_det ? Upcount : Detect; en_det = w_det ? 0 : 1; set_8 = 0; en_8 = w_det ? 1 : 0;end
			Upcount: begin ns = co_8 ? Load : Upcount; en_8 = 1;end
			Load: begin ns = Downcount; ld_down = 1; en_8 = 0; en_down = 1;end
			Downcount: begin ns = co_down ? Idle : Downcount; ld_down = 0; en_down = co_down ? 0 : 1;end
			default: ns = Idle;
		endcase
	end

	always@(posedge clock, posedge reset)begin
		if (reset)
			ps <= Idle;
		else
			ps <= ns;
	end
endmodule