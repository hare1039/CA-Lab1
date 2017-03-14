`ifndef __ADDER_32BIT__
`define __ADDER_32BIT__
`include "full_adder.v"

module adder_32bit (in_a, in_b, out, carry_out, overflow);
    input  [31:0] in_a, in_b;
    output [31:0] out;
    output        carry_out, overflow;
    wire   [31:0] carrier;
    full_adder a00(in_a[ 0], in_b[ 0],       1'b0 , out[ 0], carrier[ 0]);
    full_adder a01(in_a[ 1], in_b[ 1], carrier[ 0], out[ 1], carrier[ 1]);
    full_adder a02(in_a[ 2], in_b[ 2], carrier[ 1], out[ 2], carrier[ 2]);
    full_adder a03(in_a[ 3], in_b[ 3], carrier[ 2], out[ 3], carrier[ 3]);
    full_adder a04(in_a[ 4], in_b[ 4], carrier[ 3], out[ 4], carrier[ 4]);
    full_adder a05(in_a[ 5], in_b[ 5], carrier[ 4], out[ 5], carrier[ 5]);
    full_adder a06(in_a[ 6], in_b[ 6], carrier[ 5], out[ 6], carrier[ 6]);
    full_adder a07(in_a[ 7], in_b[ 7], carrier[ 6], out[ 7], carrier[ 7]);
    full_adder a08(in_a[ 8], in_b[ 8], carrier[ 7], out[ 8], carrier[ 8]);
    full_adder a09(in_a[ 9], in_b[ 9], carrier[ 8], out[ 9], carrier[ 9]);
    full_adder a10(in_a[10], in_b[10], carrier[ 9], out[10], carrier[10]);
    full_adder a11(in_a[11], in_b[11], carrier[10], out[11], carrier[11]);
    full_adder a12(in_a[12], in_b[12], carrier[11], out[12], carrier[12]);
    full_adder a13(in_a[13], in_b[13], carrier[12], out[13], carrier[13]);
    full_adder a14(in_a[14], in_b[14], carrier[13], out[14], carrier[14]);
    full_adder a15(in_a[15], in_b[15], carrier[14], out[15], carrier[15]);
    full_adder a16(in_a[16], in_b[16], carrier[15], out[16], carrier[16]);
    full_adder a17(in_a[17], in_b[17], carrier[16], out[17], carrier[17]);
    full_adder a18(in_a[18], in_b[18], carrier[17], out[18], carrier[18]);
    full_adder a19(in_a[19], in_b[19], carrier[18], out[19], carrier[19]);
    full_adder a20(in_a[20], in_b[20], carrier[19], out[20], carrier[20]);
    full_adder a21(in_a[21], in_b[21], carrier[20], out[21], carrier[21]);
    full_adder a22(in_a[22], in_b[22], carrier[21], out[22], carrier[22]);
    full_adder a23(in_a[23], in_b[23], carrier[22], out[23], carrier[23]);
    full_adder a24(in_a[24], in_b[24], carrier[23], out[24], carrier[24]);
    full_adder a25(in_a[25], in_b[25], carrier[24], out[25], carrier[25]);
    full_adder a26(in_a[26], in_b[26], carrier[25], out[26], carrier[26]);
    full_adder a27(in_a[27], in_b[27], carrier[26], out[27], carrier[27]);
    full_adder a28(in_a[28], in_b[28], carrier[27], out[28], carrier[28]);
    full_adder a29(in_a[29], in_b[29], carrier[28], out[29], carrier[29]);
    full_adder a30(in_a[30], in_b[30], carrier[29], out[30], carrier[30]);
    full_adder a31(in_a[31], in_b[31], carrier[30], out[31], carrier[31]);

    assign carry_out = carrier[31];
    assign overflow = (~in_a[31] & ~in_b[31] & carrier[30]) | (in_a[31] & in_b[31] & ~carrier[30]);
endmodule // adder_32bit

`endif//__ADDER_32BIT__
