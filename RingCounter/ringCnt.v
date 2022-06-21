`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/07 14:05:39
// Design Name: 
// Module Name: ringCnt
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


module ringCnt(
    input clk, rst,
    output [3:0]out
    );
    
reg [3:0]out;

always @(posedge clk)
begin
    if(!rst)
        out = 4'b0000;
    else
        out[3] <= out[2];
        out[2] <= out[1];
        out[1] <= out[0];
        out[0] <= out[3];
end

endmodule