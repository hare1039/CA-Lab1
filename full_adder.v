`ifndef __FULL_ADDER__
`define __FULL_ADDER__

module full_adder ( in_a, in_b, in_c, out_s, out_c);
    input  in_a, in_b ,in_c;
    output out_c, out_s;
    wire n1, n2, n3;
    xor (n1   , in_a, in_b);
    xor (out_s,   n1, in_c);
    nand(n2   , in_a, in_b);
    nand(n3   ,   n1, in_c);
    nand(out_c,   n3, n2);
endmodule // full_adder

`endif// __FULL_ADDER__
