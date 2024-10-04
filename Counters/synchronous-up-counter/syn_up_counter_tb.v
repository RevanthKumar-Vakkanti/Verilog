`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 10:02:02
// Design Name: 
// Module Name: syn_up_counter_tb
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


module syn_up_counter_tb(

    );
    
    reg clk,rst;
    wire [3:0]q,qb;
    
    syn_up_counter upc(clk,rst,q,qb);
    
    initial clk = 0;
    always #10 clk=~clk;
    
    initial begin
    
      rst=1;
    
    #100 rst=0;
    #100 rst=1;
    
    #1000 $finish;
    end
endmodule
