`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 15:17:58
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb;

reg A, B;
wire S, C;

halfadder u_hadder(
.a (A ),
.b (B ),
.s (S ),
.c (C ) );

initial A = 0;
always A = #400 ~A;

initial B = 0;
always B = #200 ~B;

initial begin
    #800
    $finish;
end

endmodule