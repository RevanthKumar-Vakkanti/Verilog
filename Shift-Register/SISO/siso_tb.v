`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 09:49:30
// Design Name: 
// Module Name: siso_tb
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


module siso_tb(

    );
    reg clk,rst,din;
    wire out;
    
    siso sr(clk,rst,din,out);
    
    initial clk=0;
    always #10 clk=~clk;
    initial begin
    
    rst=0; din=0;
    
    #100 rst=1; din=1;
    #10 rst=0; din=0;
    #100 rst=1; din=0;
    #10 din=1;
    
    
    #200 $finish;
    end
endmodule
