`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/12 15:38:50
// Design Name: 
// Module Name: oneBit_tb
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


module oneBit_tb;

reg A, B;
wire C, D, E, F;

oneBit u_oneB(
.a (A ),
.b (B ),
.c (C ),
.d (D ),
.e (E ),
.f (F ) );

initial A = 0;
always A = #400 ~A;

initial B = 0;
always B = #200 ~B;


initial begin
    #800
    $finish;
end

endmodule
