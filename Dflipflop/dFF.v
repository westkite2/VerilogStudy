`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/23 14:11:27
// Design Name: 
// Module Name: dFF
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


module dFF(
    input D, Clk,
    output Q, Qn
);

assign Q = ~(~(D & Clk) & Qn);
assign Qn= ~(~(~D & Clk) & Q);

endmodule
