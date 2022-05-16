`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/28 16:59:41
// Design Name: 
// Module Name: four_in_OR
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


module four_in_OR(
    input a, b, c, d,
    output e, f, g
);

assign e=a|b;
assign f=e|c;
assign g=f|d;

endmodule
