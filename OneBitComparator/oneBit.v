`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/12 15:36:47
// Design Name: 
// Module Name: oneBit
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


module oneBit(
    input a, b,
    output c, d, e, f
    );
    
assign c = (a==b);
assign d = (a!=b);
assign e = a>b;
assign f = a<b;

endmodule
