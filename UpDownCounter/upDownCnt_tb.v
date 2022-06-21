`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/07 14:47:47
// Design Name: 
// Module Name: upDownCnt_tb
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


module upDownCnt_tb;

reg CLK, MODE, RST;
wire [3:0]OUT;

upDownCnt u_upDownCnt(
.clk(CLK),
.mode(MODE),
.rst(RST),
.out(OUT) );

initial CLK = 0;
always CLK = #5 ~CLK;

initial begin
    RST = 0;
    MODE = 1; #10;
    RST = 1;
    MODE = 1; #200;
    MODE = 0; #200;
    RST = 0;
    MODE = 1; #30;
    $finish;
end
endmodule
