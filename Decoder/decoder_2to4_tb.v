`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 20:32:06
// Design Name: 
// Module Name: decoder_2to4_tb
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


module decoder_2to4_tb;

reg A, B;
wire D0, D1, D2, D3;

decoder_2to4 u_de2to4(
.a (A ), .b (B ),
.d0 (D0 ), .d1 (D1 ), .d2 (D2 ), .d3 (D3 ) );

initial A = 0;
always A = #400 ~A;

initial B = 0;
always B = #200 ~B;

initial begin
    #800
    $finish;
end

endmodule
