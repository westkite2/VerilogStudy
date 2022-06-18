`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/16 13:23:44
// Design Name: 
// Module Name: fourbitSub_tb
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

module fourbitSub_tb;
reg M;
reg [3:0] A, B;
wire [3:0] S;
wire Cout;

fourbitSub u_fbsub(M, A, B, S, Cout);

initial M = 0;
always M = #400 ~M;

initial A[3] = 0;
always A[3] = #200 ~A[3];

initial A[2] = 0;
always A[2] = #100 ~A[2];

initial A[1] = 0;
always A[1] = #50 ~A[1];

initial A[0] = 0;
always A[0] = #25 ~A[0];

initial B[3] = 0;
always B[3] = #200 ~B[3];

initial B[2] = 0;
always B[2] = #100 ~B[2];

initial B[1] = 0;
always B[1] = #50 ~B[1];

initial B[0] = 0;
always B[0] = #25 ~B[0];

initial begin
    #800
    $finish;
end

endmodule