`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/30 16:33:15
// Design Name: 
// Module Name: fourBitDecade_tb
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


module fourBitDecade_tb;

reg clk, rst;
wire [3:0]out;

fourBitDecade u_fbdc(clk, rst, out);

always #5 clk = ~clk;

initial begin
    clk <= 0;
    rst <= 0; #5;
    rst <= 1; #100;
    rst <= 0; #10;
    rst <= 1; #100;
    $finish;
end

endmodule
