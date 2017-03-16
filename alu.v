`timescale 1ns/1ps
`include "alu_top.v"
module alu(
           rst_n,         // negative reset            (input)
           src1,          // 32 bits source 1          (input)
           src2,          // 32 bits source 2          (input)
           ALU_control,   // 4 bits ALU control input  (input)
		 //bonus_control, // 3 bits bonus control input(input)
           result,        // 32 bits result            (output)
           zero,          // 1 bit when the output is 0, zero must be set (output)
           cout,          // 1 bit carry out           (output)
           overflow       // 1 bit overflow            (output)
           );
    input           rst_n;
    input  [32-1:0] src1;
    input  [32-1:0] src2;
    input   [4-1:0] ALU_control;
    //input   [3-1:0] bonus_control;

    output [32-1:0] result;
    output          zero;
    output          cout;
    output          overflow;
    output          set;

    reg    [32-1:0] result;
    reg             zero;
    reg             cout;
    reg             overflow;

    wire [31:0] cout_wire, result_wire;

    wire first_cin, slt, MSBset;
    assign first_cin = (~ALU_control[3] & ALU_control[2])? 1 : 0; //sub => ones comp + 1
    assign slt = (ALU_control[1] & ALU_control[0] & MSBset);
    alu_top ALUPART00 (src1[ 0], src2[ 0],  slt, ALU_control[3], ALU_control[2],     first_cin, ALU_control[1:0], result_wire[ 0], cout_wire[ 0], );
    alu_top ALUPART01 (src1[ 1], src2[ 1], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 0], ALU_control[1:0], result_wire[ 1], cout_wire[ 1], );
    alu_top ALUPART02 (src1[ 2], src2[ 2], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 1], ALU_control[1:0], result_wire[ 2], cout_wire[ 2], );
    alu_top ALUPART03 (src1[ 3], src2[ 3], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 2], ALU_control[1:0], result_wire[ 3], cout_wire[ 3], );
    alu_top ALUPART04 (src1[ 4], src2[ 4], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 3], ALU_control[1:0], result_wire[ 4], cout_wire[ 4], );
    alu_top ALUPART05 (src1[ 5], src2[ 5], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 4], ALU_control[1:0], result_wire[ 5], cout_wire[ 5], );
    alu_top ALUPART06 (src1[ 6], src2[ 6], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 5], ALU_control[1:0], result_wire[ 6], cout_wire[ 6], );
    alu_top ALUPART07 (src1[ 7], src2[ 7], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 6], ALU_control[1:0], result_wire[ 7], cout_wire[ 7], );
    alu_top ALUPART08 (src1[ 8], src2[ 8], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 7], ALU_control[1:0], result_wire[ 8], cout_wire[ 8], );
    alu_top ALUPART09 (src1[ 9], src2[ 9], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 8], ALU_control[1:0], result_wire[ 9], cout_wire[ 9], );
    alu_top ALUPART10 (src1[10], src2[10], 1'b0, ALU_control[3], ALU_control[2], cout_wire[ 9], ALU_control[1:0], result_wire[10], cout_wire[10], );
    alu_top ALUPART11 (src1[11], src2[11], 1'b0, ALU_control[3], ALU_control[2], cout_wire[10], ALU_control[1:0], result_wire[11], cout_wire[11], );
    alu_top ALUPART12 (src1[12], src2[12], 1'b0, ALU_control[3], ALU_control[2], cout_wire[11], ALU_control[1:0], result_wire[12], cout_wire[12], );
    alu_top ALUPART13 (src1[13], src2[13], 1'b0, ALU_control[3], ALU_control[2], cout_wire[12], ALU_control[1:0], result_wire[13], cout_wire[13], );
    alu_top ALUPART14 (src1[14], src2[14], 1'b0, ALU_control[3], ALU_control[2], cout_wire[13], ALU_control[1:0], result_wire[14], cout_wire[14], );
    alu_top ALUPART15 (src1[15], src2[15], 1'b0, ALU_control[3], ALU_control[2], cout_wire[14], ALU_control[1:0], result_wire[15], cout_wire[15], );
    alu_top ALUPART16 (src1[16], src2[16], 1'b0, ALU_control[3], ALU_control[2], cout_wire[15], ALU_control[1:0], result_wire[16], cout_wire[16], );
    alu_top ALUPART17 (src1[17], src2[17], 1'b0, ALU_control[3], ALU_control[2], cout_wire[16], ALU_control[1:0], result_wire[17], cout_wire[17], );
    alu_top ALUPART18 (src1[18], src2[18], 1'b0, ALU_control[3], ALU_control[2], cout_wire[17], ALU_control[1:0], result_wire[18], cout_wire[18], );
    alu_top ALUPART19 (src1[19], src2[19], 1'b0, ALU_control[3], ALU_control[2], cout_wire[18], ALU_control[1:0], result_wire[19], cout_wire[19], );
    alu_top ALUPART20 (src1[20], src2[20], 1'b0, ALU_control[3], ALU_control[2], cout_wire[19], ALU_control[1:0], result_wire[20], cout_wire[20], );
    alu_top ALUPART21 (src1[21], src2[21], 1'b0, ALU_control[3], ALU_control[2], cout_wire[20], ALU_control[1:0], result_wire[21], cout_wire[21], );
    alu_top ALUPART22 (src1[22], src2[22], 1'b0, ALU_control[3], ALU_control[2], cout_wire[21], ALU_control[1:0], result_wire[22], cout_wire[22], );
    alu_top ALUPART23 (src1[23], src2[23], 1'b0, ALU_control[3], ALU_control[2], cout_wire[22], ALU_control[1:0], result_wire[23], cout_wire[23], );
    alu_top ALUPART24 (src1[24], src2[24], 1'b0, ALU_control[3], ALU_control[2], cout_wire[23], ALU_control[1:0], result_wire[24], cout_wire[24], );
    alu_top ALUPART25 (src1[25], src2[25], 1'b0, ALU_control[3], ALU_control[2], cout_wire[24], ALU_control[1:0], result_wire[25], cout_wire[25], );
    alu_top ALUPART26 (src1[26], src2[26], 1'b0, ALU_control[3], ALU_control[2], cout_wire[25], ALU_control[1:0], result_wire[26], cout_wire[26], );
    alu_top ALUPART27 (src1[27], src2[27], 1'b0, ALU_control[3], ALU_control[2], cout_wire[26], ALU_control[1:0], result_wire[27], cout_wire[27], );
    alu_top ALUPART28 (src1[28], src2[28], 1'b0, ALU_control[3], ALU_control[2], cout_wire[27], ALU_control[1:0], result_wire[28], cout_wire[28], );
    alu_top ALUPART29 (src1[29], src2[29], 1'b0, ALU_control[3], ALU_control[2], cout_wire[28], ALU_control[1:0], result_wire[29], cout_wire[29], );
    alu_top ALUPART30 (src1[30], src2[30], 1'b0, ALU_control[3], ALU_control[2], cout_wire[29], ALU_control[1:0], result_wire[30], cout_wire[30], );
    alu_top ALUPART31 (src1[31], src2[31], 1'b0, ALU_control[3], ALU_control[2], cout_wire[30], ALU_control[1:0], result_wire[31], cout_wire[31], MSBset);

    integer i;

    always @ ( * ) begin
        result = result_wire;
        cout = cout_wire[31];
        zero = 0;
        for(i = 0; i < 32; i++) begin
            zero = zero | result_wire[i];
        end
        zero = ~zero;
        overflow = (ALU_control[3:2] == 2'b00)? (~src1[31] & ~src2[31] & cout_wire[30]) | ( src1[31] & src2[31] & ~cout_wire[30]):
                   (ALU_control[3:2] == 2'b01)? ( src1[31] & ~src2[31] & cout_wire[30]) | (~src1[31] & src2[31] & ~cout_wire[30]): 0;
    end
endmodule
