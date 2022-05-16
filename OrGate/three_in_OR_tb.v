`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/28 16:53:26
// Design Name: 
// Module Name: three_in_OR_tb
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


module three_in_OR_tb;
reg A, B, C;
wire D, E;

three_in_OR u_thOR(
.a (A ),
.b (B ),
.c (C ),
.d (D ),
.e (E ) );

initial A = 0;
always A = #400 ~A;

initial B = 0;
always B = #200 ~B;

initial C = 0;
always C = #100 ~C;

initial begin
    #800
    $finish;
end

endmodule
