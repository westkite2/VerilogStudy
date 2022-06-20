`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/30 13:56:52
// Design Name: 
// Module Name: twoBitCounter
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


module twoBitCounter(
    input clk, rst,
    output [1:0]out
    );
    
reg [1:0]out;

always @(posedge clk)
begin
    if(!rst)
        out <= 0;
    else
       if(out==4'b0100)
         out <= 0;
     else
         out <= out + 1;
end

endmodule
