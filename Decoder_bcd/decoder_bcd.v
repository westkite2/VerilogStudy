`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 21:54:40
// Design Name: 
// Module Name: decoder_bcd
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


module decoder_bcd(
    input a, b, c, d,
    output d1, d2, d3, d4, d5, d6, d7, d8, d9
);

assign d1 = ~a & ~b & ~c & d;
assign d2 = ~a & ~b & c & ~d;
assign d3 = ~a & ~b & c & d;
assign d4 = ~a & b & ~c & ~d;
assign d5 = ~a & b & ~c & d;
assign d6 = ~a & b & c & ~d;
assign d7 = ~a & b & c & d;
assign d8 = a & ~b & ~c & ~d;
assign d9 = a & ~b & ~c & d;

endmodule
