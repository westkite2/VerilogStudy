`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/07 13:50:41
// Design Name: 
// Module Name: shiftReg_tb
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


module shiftReg_tb;

reg CLK, IN, RST;
wire [3:0]OUT;

shiftReg u_shiftReg(
.clk(CLK),
.in(IN),
.rst(RST),
.out(OUT) );

initial CLK = 0;
always CLK = #5 ~CLK;

initial RST = 1;
always RST = #130 0;
initial begin
    IN = 0; #10;
    IN = 1; #10;
    IN = 0; #50;
    IN = 1; #50;
    IN = 0; #50
    $finish;
end

endmodule