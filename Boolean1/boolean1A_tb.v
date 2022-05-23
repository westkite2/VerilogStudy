`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/12 15:15:20
// Design Name: 
// Module Name: boolean1A_tb
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


module boolean1A_tb;

reg A, B, C;
wire D;

boolean1A u_bool1A(
.a (A ),
.b (B ),
.c (C ),
.d (D ) );

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
