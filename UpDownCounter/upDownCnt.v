`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/07 14:36:24
// Design Name: 
// Module Name: upDownCnt
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

module upDownCnt(
    input clk, mode, rst,
    output [3:0]out,
    output A, B, C, D, E, F, G, dp, digit
    );
    
reg [3:0]out;

always @(posedge clk)
begin
    if(!rst)
        out = 4'b0000;
    else
        if(mode == 1) //up mode
            if(out == 15)
                out <= 0;
            else
                out <= out + 1;
        else //down mode
            if(out == 0)
                out <= 15;
            else
                out <= out - 1;
end

assign A = 0;
assign B = 1;
assign C = 1;
assign D = 1;
assign E = 1;
assign F = mode;
assign G = ~mode;
assign dp = 1;
assign digit = A | B | C | D | E | F | G; //seg 1개로 지정

endmodule