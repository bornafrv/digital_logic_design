`timescale 1ns/1ns
module testbench_gt_3inputs();
	reg aa, bb, cc;
	wire yy1, yy0, yy11, yy00;
	One_Counter oc(aa, bb, cc, yy1, yy0);
	gate_level_3inputs gl_3inp(aa, bb, cc, yy11, yy00);
	initial begin
		aa = 0;
		bb = 0;
		cc = 0;
        	#100 aa=1;
        	#100 bb=1;
        	#100 cc=1;
        	#100 bb=0;
        	#100 aa=0;
        	#100 bb=1;
        	#100 cc=0;
        	#100 $stop;  
    	end
endmodule
