`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/30 16:46:53
// Design Name: 
// Module Name: fourBit2421_tb
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


module fourBit2421_tb;


reg clk, rst;
wire [3:0]out2421;

fourBit2421 u_2421cnt(clk, rst, out2421);

always #5 clk = ~clk;

initial begin
    clk <= 0;
    rst <= 0; #10;
    rst <= 1; #95;
    rst <= 0; #20;
    rst <= 1; #30;
    $finish;
end

endmodule