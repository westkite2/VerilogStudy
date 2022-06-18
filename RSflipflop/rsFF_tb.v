`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/23 15:54:49
// Design Name: 
// Module Name: rsFF_tb
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


module rsFF_tb;

reg Clk, R, S;
wire Q, Qn;

rsFF u_rsFF(Clk, R, S, Q, Qn);

initial R = 0;
initial S = 1;
initial Clk = 0;

initial begin
    Clk = 0; #300
    Clk = 1; #300
    $finish;
end

initial begin
    R = 0; #100
    R = 1; #50
    R = 0; #50
    R = 1; #100
    R = 0; #100
    R = 1; #50
    R = 0; #50
    R = 1; #100
    $finish;
end

initial begin
    S = 1; #50
    S = 0; #200
    S = 1; #50
    S = 1; #50
    S = 0; #200
    S = 1; #50
    $finish;
end

endmodule
