`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 13:04:21
// Design Name: 
// Module Name: parCheck_tb
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

module parCheck_tb;

reg A, B, C, D, P;
wire PEC;

parCheck u_pCheck(
.a (A ),
.b (B ),
.c (C ),
.d (D ),
.p (P ),
.pec (PEC ) );

initial A = 0;
always A = #400 ~A;

initial B = 0;
always B = #200 ~B;

initial C = 0;
always C = #100 ~C;

initial D = 0;
always D = #50 ~D;

initial P = 0;
always P = #25 ~D;


initial begin
    #800
    $finish;
end

endmodule