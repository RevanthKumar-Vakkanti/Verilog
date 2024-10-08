`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 09:33:37
// Design Name: 
// Module Name: siso
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


module siso(
    input clk,rst,din,
    output reg out
    );
    reg [2:0]q;
    always @(posedge clk)
    begin
    if(rst)
        q<=1'b0;
    else
        q[0]<=din;
        q[1]<=q[0];
        q[2]<=q[1];
        out<=q[2];
    end
 
endmodule
