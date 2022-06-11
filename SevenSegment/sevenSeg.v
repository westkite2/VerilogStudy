`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 14:50:57
// Design Name: 
// Module Name: sevenSeg
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


module sevenSeg(
    input a, b, c, d,
    output A, B, C, D, E, F, G, dp, digit
    );

assign A = ~a & c | a & ~d | b & c | ~b & ~d | ~a & b & ~c & d | a & ~b & ~c & d;
assign B = ~a & ~b | ~b & ~c | ~b & ~d | ~a & b & ~c & ~d | ~a & b & c & d | a & b & ~c & d;
assign C = ~a & ~b & ~c | ~a & ~b & c & d | ~a & b | a & ~b | a & b & ~c & d;
assign D = a & ~c | ~b & ~c & ~d | ~a & ~b & c & ~d | ~a & ~b & c & d |
            ~a & b & ~c & d | ~a & b & c & ~d | a & ~b & c & d | a & b & c & ~d;
assign E = a & b | a & c | a & ~d | c & ~d | ~a & ~b & ~c & ~d;
assign F = a & ~b | a & c | a & ~d | b & ~d | ~c & ~d | ~a & b & ~c & d;
assign G = a & ~b | a & c | a & d | ~b & c | c & ~d | ~a & b & ~c & ~d | ~a & b & ~c & d;
assign dp = 1;
assign digit = A | B | C | D | E | F | G; //seg 1개로 지정

endmodule
