`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 17:17:54
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb(

    );
    
    reg d,clk,rst;
    wire q;
    
    d_ff df(d,clk,rst,q);
    
    initial clk=0;
    always #10 clk=~clk;

    
    initial begin
    
         rst=1; d <= 0;
         
    #100 rst=0; d <= 1;
    #100 d <= 0;
    #100 d <= 1;
    
    #250 $finish;
    end
endmodule
