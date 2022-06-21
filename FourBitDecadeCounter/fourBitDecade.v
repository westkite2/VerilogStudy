`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/30 16:31:55
// Design Name: 
// Module Name: fourBitDecade
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


module fourBitDecade(
    input clk, rst,
    output [3:0]out
    );
    
reg [3:0]out;

always @(posedge clk)
begin
    if(!rst)
        out <= 0;
    else
        if(out==4'b1001)
            out <= 0;
        else
            out <= out + 1;
end

endmodule