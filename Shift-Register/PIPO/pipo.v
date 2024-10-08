`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 11:42:42
// Design Name: 
// Module Name: pipo
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


module pipo(
    input clk,rst,
    input [3:0]din,
    output reg [3:0]q
    );
    always @(posedge clk)
    begin
    if(rst==1)
        q<=0;
    else
        q<=din;
    end
endmodule
