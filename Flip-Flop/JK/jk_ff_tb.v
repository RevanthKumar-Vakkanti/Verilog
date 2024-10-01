`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 12:16:27
// Design Name: 
// Module Name: jk_ff_tb
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


/*module jk_ff_tb(

    );
    reg j,k,reset,clk=1;
    wire q,qb;
    jk_ff jk(clk,reset,j,k,q,qb);
    
    always #5 clk=~clk;
    initial begin
    
    reset=0;j=1;k=0;
    #10 j=0;k=0;
    #10 j=0;k=1;
    #10 j=1;k=1;
    
    reset=1;j=1;k=0;
    #10 j=0;k=0;
    #10 j=0;k=1;
    #10 j=1;k=1;
    
    #11 $stop;
    end
endmodule */




module jk_ff_tb(

    );
    reg j,k,clk=1;
    wire q,qb;
    jk_ff jk(j,k,clk,q,qb);
    
    always #5 clk=~clk;
    initial begin
    
     j=1;k=0;
    #10 j=0;k=0;
    #10 j=0;k=1;
    #10 j=1;k=1;
    
    #11 $stop;
    end
endmodule 











/*module jk_ff_tb();
              wire q;
              wire qb;
              reg j;
              reg k;
              reg clk;
  
  jk_ff jk(q,qb,j,k,clk);
  
  initial begin
    j = 0;
    k = 0;
    clk = 0;
    #1000 $stop;
  end
  
    always #30 clk = ~clk;
    always #50 k = ~k;
    always #100 j = ~j;
  
endmodule */