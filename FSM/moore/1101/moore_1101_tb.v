`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 11:53:56
// Design Name: 
// Module Name: moore_1101_tb
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


module moore_1101_tb(

    );
    
    reg din,clk,rst;
        wire dout;
        
        moore_1101 sd(din,clk,rst,dout);
        
        initial clk = 1;
        always #5 clk = ~clk;
        
        initial begin
        
        rst=1; din=0;
        
        #10 rst=0; din=1;
        #10 din = 1;
        #10 din = 0;
        #10 din = 1;
         
        #10 din = 1;
        #10 din = 0;
        
        #10 din = 1;
        #10 din = 1; 
        #10 din = 0;
        #10 din = 1;
        
        #10 din = 1; 
        #10 din = 0;
        
        #10 din = 1;
        #10 din = 1;
        #10 din = 0;
        #10 din = 1;
        
        #100 $finish;
        end

endmodule
