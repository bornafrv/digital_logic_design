`timescale 1ns/1ns

module cosx_TB();
reg start = 0, clock = 0, reset = 0;
reg [15:0] x = 16'b0000000100001100; //pi/3
    reg [15:0] y = 16'b0;
    wire [15:0] cosx;
    wire ready;

    circuit cos(ready, start, clock, reset, x, y, cosx);

        always #100 clock = ~clock;
    initial begin
        #10 y = 16'b0000000001100110; //2 times
      #240 start = 1;
        #200 start = 0;
        #4000 y = 16'b0000000000001010; //3 times
        #240 start = 1;
        #200 start = 0;
        #6000 reset = 1;
        #200 reset = 0;
        #2000 $stop;
    end
endmodule