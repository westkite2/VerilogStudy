`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/08 22:01:08
// Design Name: 
// Module Name: decoder_bcd_tb
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

module decoder_bcd_tb;

reg A3, A2, A1, A0;
wire D1, D2, D3, D4, D5, D6, D7, D8, D9;

decoder_bcd u_debcd(
.a (A3 ),
.b (A2 ),
.c (A1 ),
.d (A0 ),
.d1 (D1 ),
.d2 (D2 ),
.d3 (D3 ),
.d4 (D4 ),
.d5 (D5 ),
.d6 (D6 ),
.d7 (D7 ),
.d8 (D8 ),
.d9 (D9 ) );

initial A3 = 0;
always A3 = #400 ~A3;

initial A2 = 0;
always A2 = #200 ~A2;

initial A1 = 0;
always A1 = #100 ~A1;

initial A0 = 0;
always A0 = #50 ~A0;

initial begin
    #500
    $finish;
end

endmodule
