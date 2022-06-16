`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 00:00:11
// Design Name: 
// Module Name: demux_1to4_tb
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


module demux_1to4_tb;
    
reg a, b, data;
wire A, B, C, D;

demux_1to4 u_dem1to4(
.a (a ),
.b (b ),
.data(data ),
.A (A ),
.B (B ),
.C (C ),
.D (D ) );

initial a = 0;
always a = #400 ~a;

initial b = 0;
always b = #200 ~b;

initial data = 0;
always data = #100 ~data;


initial begin
    #800
    $finish;
end

endmodule
