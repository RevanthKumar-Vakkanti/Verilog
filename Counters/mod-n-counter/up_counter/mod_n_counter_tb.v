`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 14:43:24
// Design Name: 
// Module Name: mod_n_counter_tb
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


module mod_n_up_counter_tb(

    );
    parameter n=10;
    parameter N=4;
    reg clk,rst;   
    wire [N-1:0]out;
    
    mod_n_up_counter #(n,N) nc(clk,rst,out);
    
    
    initial clk=0;
    always #10 clk=~clk;
    
    initial begin
    
    rst=0;
    #100 rst=1;
    #200 rst=0;
    
    #1000 $finish;
    end
endmodule
