`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 16:00:03
// Design Name: 
// Module Name: codeconverter_tb
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


module codeconverter_tb;

reg A, B, C, D;
wire X, Y, Z, T;

codeconverter u_cc(
.a (A ),
.b (B ),
.c (C ),
.d (D ),
.x (X ),
.y (Y ),
.z (Z ),
.t (T ) );

initial A = 0;
always A = #800 ~A;

initial B = 0;
always B = #400 ~B;

initial C = 0;
always C = #200 ~C;

initial D = 0;
always D = #100 ~D;

initial begin
    #1000
    $finish;
end

endmodule
