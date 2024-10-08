`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 11:46:37
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb(

    );
    
    reg clk,rst;
    reg [3:0]din;
    wire [3:0]q;
    
    pipo sr(clk,rst,din,q);
    initial begin
    rst = 1;
    clk = 0;
    #50 rst = 0;

    end
    always #10 clk =~clk;
    always #50 din = $random;
endmodule
    
