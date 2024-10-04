`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 12:12:07
// Design Name: 
// Module Name: johnson_counter_tb
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


module johnson_counter_tb(

    );
    
    reg clk,rst;
    wire [3:0]q;
    wire [3:0]qb;
    
    johnson_counter jc(clk,rst,q,qb);
    
    initial clk=0;
    always #10 clk=~clk;
   
    initial begin
    
        rst =1;
       #100 rst=0;
       #200 rst=1;
       
       #250 $finish;
       end    
endmodule
