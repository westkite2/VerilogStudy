`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/14 16:23:22
// Design Name: 
// Module Name: buf_tb
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

module buf_tb;

reg aa;
wire y;

buffer u_buffer(
.a (aa ),
.y (y ) );

initial aa = 1'b0;
always aa = #100 ~aa;

initial begin
        #1000
        $finish;
end

endmodule