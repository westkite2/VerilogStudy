`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 15:42:27
// Design Name: 
// Module Name: halfsubtractor_tb
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


module halfsubtractor_tb;

reg A, B;
wire D, BOR;

halfsubtractor u_hsub(
.a (A ),
.b (B ),
.d (D ),
.borrow (BOR ) );

initial A = 0;
always A = #400 ~A;

initial B = 0;
always B = #200 ~B;

initial begin
    #800
    $finish;
end

endmodule
