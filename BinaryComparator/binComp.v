`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 13:42:42
// Design Name: 
// Module Name: binComp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module binCmp(
    input a, b, c, d,
    output f1, f2, f3
    );

assign f1 = ~a & b & ~c & ~d | a & ~b & ~c | a & b & ~c | a & b & c & ~d; //A>B
assign f2 = ~a & ~b & ~c & ~d | ~a & b & ~c & d | a & ~b & c & ~d | a & b & c & d; //A=B
assign f3 = ~a & ~b & ~c & d | ~a & c | a & ~b & c & d;  //A<B

endmodule