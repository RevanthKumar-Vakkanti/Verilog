`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 09:35:29
// Design Name: 
// Module Name: ring_counter_tb
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


/*module ring_counter_tb(

    );
    
    reg clk,rst;
    wire [3:0]q;
    
    ring_counter rcd(clk,rst,q);
    
    initial clk=0;
  //  initial d=1;
    always #10 clk=~clk;
    initial begin
    
    rst=1;
    
    #100rst=0;
    #200 rst=1;
    
    
    #250 $finish;
    end
endmodule*/



module ring_counter_tb(

    );
    
    reg clk,rst;
    wire [3:0]q;
    wire [3:0]qb;
    
    ring_counter jc(clk,rst,q,qb);
    
    initial clk=0;
    always #10 clk=~clk;
   
    initial begin
    
        rst =1;
       #100 rst=0;
       #200 rst=1;
       
       #250 $finish;
       end    
endmodule
