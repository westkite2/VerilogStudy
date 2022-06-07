`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 15:50:26
// Design Name: 
// Module Name: fullsubtractor_tb
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


module fullsubtractor_tb;


reg A, B, Bn;
wire D, b;

fullsubtractor u_fsub(
.A (A ),
.B (B ),
.Bn (Bn ),
.D (D ),
.b (b ) );

initial A = 0;
always A = #400 ~A;

initial B = 0;
always B = #200 ~B;

initial Bn = 0;
always Bn = #100 ~Bn;

initial begin
    #800
    $finish;
end

endmodule