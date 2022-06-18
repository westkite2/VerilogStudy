`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/16 09:44:30
// Design Name: 
// Module Name: fourbitAdd
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
module fulladder(
    input A, B, Cin, 
    output S, Cout
);
assign S = A^B^Cin;
assign Cout = Cin & (A ^ B) | A & B;
endmodule

module fourbitAdd(
    input [3:0] A, B,
    input Cin,
    output [3:0] S,
    output Cout
);
wire C1, C2, C3;
fulladder FA0(A[0], B[0], Cin, S[0], C1);
fulladder FA1(A[1], B[1], C1, S[1], C2);
fulladder FA2(A[2], B[2], C2, S[2], C3);
fulladder FA3(A[3], B[3], C3, S[3], Cout);

endmodule
