`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/28 16:27:13
// Design Name: 
// Module Name: four_in_AND
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


module four_in_AND(
    input a, b, c, d,
    output e, f, g
    );
    
assign e=a&b;
assign f=e&c;
assign g=f&d;

endmodule