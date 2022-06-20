`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/30 14:10:38
// Design Name: 
// Module Name: twoBitCounter_tb
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

module twoBitCounter_tb;

reg clk, rst;
wire [1:0]out;

twoBitCounter u_twoCnt(clk, rst, out);

always #10 clk = ~clk;

initial begin
    clk <= 0;
    rst <= 0; #10;
    rst <= 1; #80;
    rst <= 0; #20;
    rst <= 1; #80;
    $finish;
end

endmodule
