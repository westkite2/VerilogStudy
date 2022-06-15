`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/16 13:49:41
// Design Name: 
// Module Name: bcdAdd_tb
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

module bcdAdd_tb;

reg [3:0] A, B;
reg Cin;
wire [3:0] S;
wire Cout;

bcdAdd u_bcdAdd(A, B, Cin, S, Cout);

initial Cin = 0;
always Cin = #25 ~Cin;

initial A[3] = 0;
always A[3] = #400 ~A[3];

initial A[2] = 0;
always A[2] = #200 ~A[2];

initial A[1] = 0;
always A[1] = #100 ~A[1];

initial A[0] = 0;
always A[0] = #50 ~A[0];

initial B[3] = 0;
always B[3] = #400 ~B[3];

initial B[2] = 0;
always B[2] = #200 ~B[2];

initial B[1] = 0;
always B[1] = #100 ~B[1];

initial B[0] = 0;
always B[0] = #50 ~B[0];

initial begin
    #800
    $finish;
end

endmodule