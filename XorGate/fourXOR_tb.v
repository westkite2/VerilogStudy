`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/05 15:40:18
// Design Name: 
// Module Name: fourXOR_tb
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

module fourXOR_tb;

reg A, B, C, D;
wire E, F, G;

fourXOR u_foXOR(
.a (A ),
.b (B ),
.c (C ),
.d (D ),
.e (E ),
.f (F ),
.g (G ) );

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