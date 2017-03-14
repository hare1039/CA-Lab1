`include "twos_complement_32bit.v"

module test2 ();
    reg clk = 0;
    reg reset;
    reg [31:0] r1, r2, r3, r4;
    wire [31:0] res;
    wire cout, of;

    twos_complement_32bit X(r1, res);
    always #6 begin
        clk = ~clk;
    end

    initial begin
        reset = 1;
        #20 reset = 0;
        #10 r1 = 32'hF0000000;
        #10 r1 = 32'h20000000;
        #10 r1 = 32'h2350000;
        #10 r1 = 32'h3000;
        #10 r1 = 32'h300;
        #10 r1 = 32'h420000;
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
