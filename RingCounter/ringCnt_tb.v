`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/07 14:20:41
// Design Name: 
// Module Name: ringCnt_tb
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


module ringCnt_tb;

reg CLK, RST;
wire [3:0]OUT;

ringCnt u_ringCnt(.clk(CLK), .rst(RST), .out(OUT) );

initial CLK = 0;
always CLK = #5 ~CLK;

initial RST = 0;
always RST = #10 1;

initial begin
    #100
    $finish;
end

endmodule