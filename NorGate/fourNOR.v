`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/05 15:32:49
// Design Name: 
// Module Name: fourNOR
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

module fourNOR(
    input a, b, c, d,
    output e, f, g
    );
    
assign e=~(a|b);
assign f=~(e|c);
assign g=~(f|d);

endmodule