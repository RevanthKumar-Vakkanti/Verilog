`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 10:04:47
// Design Name: 
// Module Name: mod_210_up_down
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


module mod_210_up_down #(parameter n = 210, parameter N = 8)(
    input clk,rst,
    input updown,
    output reg [N-1:0] out
    );
    
    always @(posedge clk)
    begin
        if(rst)
            out <= 8'd7;
        else if(updown)
        begin
            if(out == n-1)
                out <= 8'd7;
            else
                out = out + 7;
        end
        else
        begin
            if(out == 8'd7)
                out <= n-1;
            else
                out = out - 7;
        end   
    end
endmodule
