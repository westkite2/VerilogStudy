`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/05 15:37:39
// Design Name: 
// Module Name: fourXOR
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

module fourXOR(
    input a, b, c, d,
    output e, f, g
    );
    
assign e=a&(~b)|(~a)&b;
assign f=e&(~c)|(~e)&c;
assign g=f&(~d)|(~f)&d;

endmodule

