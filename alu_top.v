`timescale 1ns/1ps
`include "full_adder.v"
module alu_top(
               src1,       //1 bit source 1 (input)
               src2,       //1 bit source 2 (input)
               less,       //1 bit less     (input)
               A_invert,   //1 bit A_invert (input)
               B_invert,   //1 bit B_invert (input)
               cin,        //1 bit carry in (input)
               operation,  //operation      (input)
               result,     //1 bit result   (output)
               cout,       //1 bit carry out(output)
               );
    input         src1;
    input         src2;
    input         less;
    input         A_invert;
    input         B_invert;
    input         cin;
    input [2-1:0] operation;

    output        result;
    output        cout;

    reg           result;

    wire A, B;
    assign A = (A_invert) ? ~src1 : src1;
    assign B = (B_invert) ? ~src2 : src2;

    wire result0, result1, result2, result3;

    and          (A, B, result0);
    or           (A, B, result1);
    full_adder FA(A, B, cin, result2, cout);
    assign        result3 = less;

    always @ ( * ) begin
        result <= (operation == 2'b00) ? result0:
                  (operation == 2'b01) ? result1:
                  (operation == 2'b10) ? result2:
                  (operation == 2'b11) ? result3: 2'bxx;
    end



endmodule
