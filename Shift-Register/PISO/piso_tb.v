`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 12:26:01
// Design Name: 
// Module Name: piso_tb
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

module piso_tb();
    reg clk;
    reg load;
    reg rst;
    reg [3:0] din;
    wire q;
    piso uut (.clk(clk),.load(load),.rst(rst),.din(din),.q(q));
    always #5 clk = ~clk;

    initial begin
        clk = 0; load = 0; rst = 0; din = 4'b0000; 
        
         rst = 1;
         #10;
          rst = 0;

        load = 1;
        din = 4'b1010; 
        #10;            
        load = 0;       
        #40;

        load = 1;
        din = 4'b1101;  
        #10;            
        load = 0;
        #40;

        $finish;
    end

    initial begin
        $monitor("Time = %0t, clk = %b, rst = %b, load = %b, din = %b, q = %b", $time, clk, rst, load, din, q);
    end

endmodule



