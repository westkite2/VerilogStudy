`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/13 22:53:17
// Design Name: 
// Module Name: mealy_tb
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


module mealy_tb;

reg CLK, IN, RST;
wire OUT;

mealy u_mealy( .clk(CLK), .in(IN), .rst(RST), .out(OUT) );

initial CLK = 0;
always CLK = #5 ~CLK;

initial begin
    RST = 1; #10;
    RST = 0; #70;
    RST = 1; #10;
end

initial begin
    IN = 0; #10;
    IN = 1; #10;
    IN = 1; #10;
    IN = 0; #10;
    IN = 1; #10; //1
    IN = 1; #10;
    IN = 1; #10;
    IN = 0; #10;
    IN = 1; #10;
    $finish;
end

endmodule
