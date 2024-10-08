`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 10:28:22
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb();
    
    reg clk,rst,din;
    wire [3:0]q;
    
    sipo sr(clk,rst,din,q);
    
    initial clk=0;
    always #5 clk=~clk;
    
    initial begin
    
    rst=0;din=0;
    #10 rst=1; din=1;
    #10 din=0;
    #10 din=0;
    #10 din=1;
    #20 rst=0;
    
    #60 $finish;
    end
endmodule
