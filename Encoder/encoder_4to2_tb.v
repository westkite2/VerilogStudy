`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 21:13:55
// Design Name: 
// Module Name: encoder_4to2_tb
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


module encoder_4to2_tb;

reg A, B, C, D;
wire E0, E1;

encoder_4to2 u_en4to2(
.a (A ),
.b (B ),
.c (C ),
.d (D ),
.e0 (E0 ),
.e1 (E1 ) );

initial begin
    A = 0; #600;
    A = 1; #200;
end
initial begin
    B = 0; #400;
    B = 1; #200;
    B = 0; #200;
 end
initial begin
    C = 0; #200;
    C = 1; #200;
    C = 0; #400;
end
initial begin
    D = 1; #200;
    D = 0; #600;
end

initial begin
    #800
    $finish;
end

endmodule
