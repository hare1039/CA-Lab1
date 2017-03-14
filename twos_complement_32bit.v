`ifndef __TWOS_COMPLEMENT__
`define __TWOS_COMPLEMENT__

module twos_complement_32bit (in, out);
    input  [31:0] in;
    output [31:0] out;
    wire   [30:0] connector;

    assign connector[ 0] = in[ 0];
    assign connector[ 1] = in[ 1] | connector[ 0];
    assign connector[ 2] = in[ 2] | connector[ 1];
    assign connector[ 3] = in[ 3] | connector[ 2];
    assign connector[ 4] = in[ 4] | connector[ 3];
    assign connector[ 5] = in[ 5] | connector[ 4];
    assign connector[ 6] = in[ 6] | connector[ 5];
    assign connector[ 7] = in[ 7] | connector[ 6];
    assign connector[ 8] = in[ 8] | connector[ 7];
    assign connector[ 9] = in[ 9] | connector[ 8];
    assign connector[10] = in[10] | connector[ 9];
    assign connector[11] = in[11] | connector[10];
    assign connector[12] = in[12] | connector[11];
    assign connector[13] = in[13] | connector[12];
    assign connector[14] = in[14] | connector[13];
    assign connector[15] = in[15] | connector[14];
    assign connector[16] = in[16] | connector[15];
    assign connector[17] = in[17] | connector[16];
    assign connector[18] = in[18] | connector[17];
    assign connector[19] = in[19] | connector[18];
    assign connector[20] = in[20] | connector[19];
    assign connector[21] = in[21] | connector[20];
    assign connector[22] = in[22] | connector[21];
    assign connector[23] = in[23] | connector[22];
    assign connector[24] = in[24] | connector[23];
    assign connector[25] = in[25] | connector[24];
    assign connector[26] = in[26] | connector[25];
    assign connector[27] = in[27] | connector[26];
    assign connector[28] = in[28] | connector[27];
    assign connector[29] = in[29] | connector[28];
    assign connector[30] = in[30] | connector[29];

    assign out[ 0] = in[0];
    assign out[ 1] = (connector[ 0]) ? ~in[ 1] : in[ 1];
    assign out[ 2] = (connector[ 1]) ? ~in[ 2] : in[ 2];
    assign out[ 3] = (connector[ 2]) ? ~in[ 3] : in[ 3];
    assign out[ 4] = (connector[ 3]) ? ~in[ 4] : in[ 4];
    assign out[ 5] = (connector[ 4]) ? ~in[ 5] : in[ 5];
    assign out[ 6] = (connector[ 5]) ? ~in[ 6] : in[ 6];
    assign out[ 7] = (connector[ 6]) ? ~in[ 7] : in[ 7];
    assign out[ 8] = (connector[ 7]) ? ~in[ 8] : in[ 8];
    assign out[ 9] = (connector[ 8]) ? ~in[ 9] : in[ 9];
    assign out[10] = (connector[ 9]) ? ~in[10] : in[10];
    assign out[11] = (connector[10]) ? ~in[11] : in[11];
    assign out[12] = (connector[11]) ? ~in[12] : in[12];
    assign out[13] = (connector[12]) ? ~in[13] : in[13];
    assign out[14] = (connector[13]) ? ~in[14] : in[14];
    assign out[15] = (connector[14]) ? ~in[15] : in[15];
    assign out[16] = (connector[15]) ? ~in[16] : in[16];
    assign out[17] = (connector[16]) ? ~in[17] : in[17];
    assign out[18] = (connector[17]) ? ~in[18] : in[18];
    assign out[19] = (connector[18]) ? ~in[19] : in[19];
    assign out[20] = (connector[19]) ? ~in[20] : in[20];
    assign out[21] = (connector[20]) ? ~in[21] : in[21];
    assign out[22] = (connector[21]) ? ~in[22] : in[22];
    assign out[23] = (connector[22]) ? ~in[23] : in[23];
    assign out[24] = (connector[23]) ? ~in[24] : in[24];
    assign out[25] = (connector[24]) ? ~in[25] : in[25];
    assign out[26] = (connector[25]) ? ~in[26] : in[26];
    assign out[27] = (connector[26]) ? ~in[27] : in[27];
    assign out[28] = (connector[27]) ? ~in[28] : in[28];
    assign out[29] = (connector[28]) ? ~in[29] : in[29];
    assign out[30] = (connector[29]) ? ~in[30] : in[30];
    assign out[31] = (connector[30]) ? ~in[31] : in[31];

endmodule // twos_complement_32bit

`endif//__TWOS_COMPLEMENT__
