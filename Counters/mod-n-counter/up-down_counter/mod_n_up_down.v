`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 11:32:42
// Design Name: 
// Module Name: mod_n_up_down
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


module mod_n_up_down #(parameter n=10, parameter N=4)(
    input clk,rst,
    input up_down,
    output reg [N-1:0]out
    );
    
    always @(posedge clk)
    begin
        if(rst)
            out<=4'b0000;
        else if(up_down)
        begin
            if(out==n-1)
                out <= 4'b0000;
            else
                out <= out+1;
        end
        else
        begin
            if(out==4'b0000)
                out <=n-1;
            else
                out <= out-1;
        end
    end
endmodule
