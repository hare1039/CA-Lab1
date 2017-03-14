`include "adder_32bit.v"

module test2 ();
    reg clk = 0;
    reg reset;
    reg [31:0] r1, r2, r3, r4;
    wire [31:0] res;
    wire cout, of;

    adder_32bit X(r1, r2, res, cout, of);
    always #6 begin
        clk = ~clk;
    end

    initial begin
        reset = 1;
        #20 reset = 0;
        r1 = 32'hF0000000;
        r2 = 32'h8FFFFFFF;
        #318;
        $finish;
    end

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;
    end
endmodule // test2
