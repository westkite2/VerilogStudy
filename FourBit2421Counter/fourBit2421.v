`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/30 16:42:52
// Design Name: 
// Module Name: fourBit2421
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


module fourBit2421(
    input clk, rst,
    output [3:0]out2421
    );
    
reg [3:0]out;

always @(posedge clk)
begin
    if(!rst)
        out <= 4'b0000;
    else
        if(out==4'b1001)
            out = 4'b0000;
        else
            out <= out + 1;
end

assign out2421[3] = out[3] | out[2]&out[1] | out[2]&out[0];
assign out2421[2] = out[3] | out[2]&out[1] | out[2]&(~out[0]);
assign out2421[1] = out[3] | (~out[2])&out[1] | out[2]&(~out[1])&out[0];
assign out2421[0] = out[0];

endmodule