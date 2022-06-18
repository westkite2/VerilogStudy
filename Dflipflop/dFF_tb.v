`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/23 14:21:34
// Design Name: 
// Module Name: dFF_tb
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


module dFF_tb;

reg D, E;
wire Q, Qn;

dFF u_dFF(D, E, Q, Qn);

initial E = 0;
always E = #300 ~E;

initial D = 0;
initial begin
    D = 0; #100
    D = 1; #50
    D = 0; #50
    D = 1; #100
    D = 0; #100
    D = 1; #50
    D = 0; #50
    D = 1; #100
    $finish;
end
endmodule
