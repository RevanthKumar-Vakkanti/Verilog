`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 16:46:52
// Design Name: 
// Module Name: moore_1001_tb
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


module moore_1001_tb(

    );
    reg din,clk,rst;
    wire dout;
    
    moore_1001 sd(din,clk,rst,dout);
    
    initial clk=1;
    always #10 clk=~clk;

    
    initial begin
    
    rst=1; din=0;
    #10 rst=0; din=1;
    #10 din=0;
    #10 din=0;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=0;
    #10 din=0;
    #10 din=1;
    #10 din=0;  
    
    #100 $stop;  
    end
endmodule
