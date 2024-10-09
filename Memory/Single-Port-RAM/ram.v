`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 04:41:45
// Design Name: 
// Module Name: ram
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


module ram(
    input [3:0]din,
    input [4:0]addr,
    input clk,w,
    output reg [3:0] dout
    );
    reg [3:0] ram[31:0];
    always @(clk)
        begin
            if(w)
                ram[addr]<=din;
            else
                dout<=ram[addr];
        end
 endmodule
