`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 13:44:52
// Design Name: 
// Module Name: binCmp_tb
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



module binCmp_tb;

reg A, B, C, D;
wire F1, F2, F3;

binCmp u_binCmp(
.a (A ),
.b (B ),
.c (C ),
.d (D ),
.f1 (F1 ),
.f2 (F2 ),
.f3 (F3 ) );

initial A = 0;
always A = #400 ~A;

initial B = 0;
always B = #200 ~B;

initial C = 0;
always C = #100 ~C;

initial D = 0;
always D = #50 ~D;

initial begin
    #800
    $finish;
end

endmodule
