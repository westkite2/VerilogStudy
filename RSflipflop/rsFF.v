`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/23 15:54:22
// Design Name: 
// Module Name: rsFF
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

module rsFF(
    input Clk, R, S,
    output Q, Qn
);
assign Q = ~(~(S & Clk) & Qn);
assign Qn = ~(~(R & Clk) & Q);

endmodule
