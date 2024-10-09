`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 14:32:02
// Design Name: 
// Module Name: mod_n_counter
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

//up-counter
module mod_n_up_counter #(parameter n=8, parameter N=3)(
    input clk,rst,
    output reg [N-1:0]out
    );
    
    always @(posedge clk)
    begin
        if(rst)
            out<=4'b0000;
        else 
        begin
        if(out == n-1)
            out<=4'b0000;
        else 
            out<=out+1;
        end
    end
endmodule





