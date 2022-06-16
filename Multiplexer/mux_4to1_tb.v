`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 23:27:51
// Design Name: 
// Module Name: mux_4to1_tb
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


module mux_4to1_tb;

reg a, b, A, B, C, D;
wire out;

mux_4to1 u_mux4to1(
.a (a ),
.b (b ),
.A (A ),
.B (B ),
.C (C ),
.D (D ),
.out (out ) );

initial a = 0;
always a = #400 ~a;

initial b = 0;
always b = #200 ~b;

initial begin
    A = 1; #200;
    A = 0; #600;
end
initial begin
    B = 0; #200;
    B = 1; #200;
    B = 0; #400;
end
initial begin
    C = 0; #400;
    C = 1; #200;
    C = 0; #200;
end
initial begin
    D = 0; #600;
    D = 1; #200;
end

initial begin
    #800;
    $finish;
end

endmodule

