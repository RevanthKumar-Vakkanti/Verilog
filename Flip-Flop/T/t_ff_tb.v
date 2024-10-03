`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 10:10:49
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb(

    );
    
    reg t,clk,rst;
    wire q;
    
    t_ff tf(t,clk,rst,q);
    
    always #5 clk = ~clk;
    
    /*initial
        begin
            t = 0;
            rst = 0;
            clk = 0;
     
            #2000 $finish;
        end
        always #500 rst = ~rst;
        always #70 t=~t;
        always #30 clk = ~clk;
    endmodule */
    
    
    initial begin
         clk = 0; rst = 0; t = 0;
         
       #15 rst= 1;
       #15 t = 1;
       #15 t = 0;
       
       #20 $stop;
        end
    endmodule
