`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 15:54:55
// Design Name: 
// Module Name: codeconverter
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


module codeconverter(
    input a, b, c, d,
    output x, y, z, t
);

assign x = ~(~&(~((~&a) & (~&(~&(~(b&c)))))) & ~&(~&(~(b&d))));
assign y = ~((~&(~((~&a) & (~&(~&(~(b&c))))))) & (~&(~&(~(b&(~&d))))));
assign z = ~((~&(~((~&a) & ~&(~&(~((~&b)&c)))))) & (~&(b&(~&c)&d)));
assign t = d;

//assign x = a | b&c | b&d;
//assign y = a | b&c | b&(~d);
//assign z = a | (~b)&c | b&(~c)&d;
//assign t = d;

endmodule
