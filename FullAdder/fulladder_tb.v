`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 15:24:59
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb;

reg A, B, C_IN;
wire S, C_OUT;

fulladder u_fadder(
.a (A ),
.b (B ),
.c_in (C_IN ),
.s (S ),
.c_out (C_OUT ) );

initial C_IN = 0;
always C_IN = #400 ~C_IN;

initial B = 0;
always B = #200 ~B;

initial A = 0;
always A = #100 ~A;

initial begin
    #800
    $finish;
end

endmodule