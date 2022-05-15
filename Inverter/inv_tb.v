//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/14 15:26:02
// Design Name: 
// Module Name: inv_tb
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

`timescale 1ns / 1ps

module inv_tb;

reg aa;

wire y;

inv u_inv(
.a (aa ),
.y (y ) );

initial aa = 1'b0;
always aa = #100 ~aa;

initial begin
        #1000
        $finish;
end

endmodule


