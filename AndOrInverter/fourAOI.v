`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/05 15:44:31
// Design Name: 
// Module Name: fourAOI
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


module fourAOI(
    input a, b, c, d,
    output e, f, g
    );
    
assign e=a&b;
assign f=c&d;
assign g=~(e|f);

endmodule
