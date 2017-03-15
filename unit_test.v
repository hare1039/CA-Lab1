`include "subtract_32bit.v"

module test2 ();
    reg clk = 0;
    reg reset;
    reg [31:0] r1, r2, r3, r4;
    wire [31:0] res;
    wire cout, of;

    subtract_32bit X(r1, r2, res, cout, of);
    always #6 begin
        clk = ~clk;
    end

    initial begin
        reset = 1;
        #20 reset = 0;
        #10 r1 = 32'h80000000;
        r2 = 12341;
        #10 r1 = 32'h20000000;
        r2 = 132142;
        #10 r1 = 32'h2350000;
        r2 = -13412423;
        #10 r1 = 32'h3000;
        r2 = 0;
        #10 r1 = 32'h300;
        r2 = 300;
        #10 r1 = 32'h0;
        r2 = 10;
        #10 r1 = 32'h13000;
        #10 r1 = 32'h00000000;
        #10 r1 = 32'h10000000;
        #318;
        $finish;
    end

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;
    end
endmodule // test2
