`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 22:59:40
// Design Name: 
// Module Name: rip_counter_tb
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


module rip_counter_tb(

    );
    reg clk,rst;
    wire [3:0]q;
    
    rip_counter rc(clk,rst,q);
    
    initial clk=0;
    always #10 clk=~clk;
    
    initial begin
    
    rst=1;
    #100 rst=0;
    #200 rst=1;
    #300 rst=0;
    
    #350 $finish;
    end
endmodule
