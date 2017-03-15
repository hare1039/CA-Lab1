`ifndef __SUBTRACT_32BIT__
`define __SUBTRACT_32BIT__

`include "adder_32bit.v"
`include "twos_complement_32bit.v"

module subtract_32bit (in_a, in_b, out, carry_out, overflow);
    input  [31:0] in_a, in_b;
    output [31:0] out;
    output        carry_out, overflow;
    wire   [31:0] inverter;

    twos_complement_32bit I(in_b, inverter);
    adder_32bit SB(in_a, inverter, out, carry_out, overflow);

endmodule // subtract_32bit

`endif//__SUBTRACT_32BIT__
