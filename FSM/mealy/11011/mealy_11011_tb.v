`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 19:52:46
// Design Name: 
// Module Name: mealy_11011_tb
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


module mealy_11011_tb(

    );
    
    reg din,clk,rst;
    wire dout;
    
    mealy_11011 sd(din,clk,rst,dout);
    
    initial clk = 1;
    always #5 clk = ~clk;
    
    initial begin
    
    rst=1; din=0;
    
    #10 rst=0; din=1;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=1;
    #10 din=0;
    
    #20 $stop;    
    end
endmodule
