`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 17:04:05
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input d,clk,rst,
    output reg q,
    output qb
    );
    
    always @(posedge clk)
    begin
        if(rst)
            q<=0;
        else
            q<=d;
    end
    assign qb = ~q;
endmodule
