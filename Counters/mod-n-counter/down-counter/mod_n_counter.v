`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 11:52:09
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


//down-counter
module mod_n_down_counter #(parameter n=10, parameter N=4)(
    input clk,rst,
    output reg [N-1:0]out
    );
    
    always @(posedge clk)
    begin
        if(rst)
            out<=4'b1001;
        else 
        begin
        if(out == 0)
            out<=4'b1001;
        else 
            out<=out-1;
        end
    end
endmodule
