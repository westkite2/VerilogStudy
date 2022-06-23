`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/13 22:36:38
// Design Name: 
// Module Name: mealy
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


module mealy(
    input clk, in, rst,
    output out
    );
    
reg [1:0]state; // 0, 1, 2, 3
reg out;

//1101
always @(posedge clk)
begin
    if(rst) begin//reset if rst=1
        out <= 0;
        state <= 2'b00;
    end
    else begin
        if (state == 2'b00) begin
            if (in == 1) begin
                out <= 0;
                state <= 2'b01;
            end
            else begin
                out <= 0;
            end
        end
        else if (state == 2'b01) begin
            if (in == 1) begin
                out <= 0;
                state <= 2'b10;
            end
            else begin
                out <= 0;
                state <= 2'b00;
            end
        end
        else if (state == 2'b10) begin
            if (in == 1) begin
                out <= 0;
            end
            else begin
                out <= 0;
                state <= 2'b11;
            end
        end
        else if (state == 2'b11) begin
            if (in == 1) begin
                out <= 1;
                state <= 2'b01;
            end
            else begin
                out <= 0;
                state <= 2'b00;
            end
        end
    end
end

endmodule
