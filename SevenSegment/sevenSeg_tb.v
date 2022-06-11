`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 16:23:46
// Design Name: 
// Module Name: sevenSeg_tb
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


module sevenSeg_tb;

reg a, b, c, d;
wire A, B, C, D, E, F, G, dp;

sevenSeg u_sevenSeg(
.a (a ),
.b (b ),
.c (c ),
.d (d ),
.A (A ),
.B (B ),
.C (C ),
.D (D ),
.E (E ),
.F (F ),
.G (G ),
.dp (dp ) );

initial a = 0;
always a = #400 ~a;

initial b = 0;
always b = #200 ~b;

initial c = 0;
always c = #100 ~c;

initial d = 0;
always d = #50 ~d;

initial begin
    #800
    $finish;
end

endmodule

