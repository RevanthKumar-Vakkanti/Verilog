`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 11:43:57
// Design Name: 
// Module Name: mod_n_up_down_tb
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


module mod_n_up_down_tb(

    );
    
    parameter n=10;
    parameter N=4;
    reg clk,rst;
    reg up_down;
    wire [N-1:0]out;
    
    mod_n_up_down #(n,N) udc(clk,rst,up_down,out);
    
    initial clk =0;
    always #10 clk=~clk;
    
    initial begin
    
    rst=1; up_down=1;
    #200 rst=0;
    #300 up_down=0;
    
    #500 $finish;
    end    
endmodule
