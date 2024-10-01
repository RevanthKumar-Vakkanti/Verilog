`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 10:04:19
// Design Name: 
// Module Name: sr_ff_tb
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

// without using reset

/*module sr_ff_tb(

    );
    
    reg s,r;
    reg clk=1;
    wire q;
    
    sr_ff sr(s,r,clk,q);
    
    always #5 clk =~clk;
    initial begin
    
     s=0; r=0;
    
    #10 s=0; r=1;
    #10 s=1; r=0;
    #10 s=1; r=1;
    
    #10 $finish;
    end
endmodule  */


// using reset
module sr_ff_tb(

    );
    
    reg s,r;
    reg clk=1,reset;
    wire q;
    
    sr_ff sr(s,r,clk,reset,q);
    
    always #5 clk =~clk;
    initial begin
    
     s=1; r=0; reset=0; 
    #10 s=0; r=1;
    #10 s=0; r=0;
    #10 s=1; r=1;
    
    #10 s=0; r=0; reset=1; 
        #10 s=0; r=1;
        #10 s=1; r=0;
        #10 s=1; r=1;
    #10 $finish;
    end
endmodule



/*module sr_ff_tb(

    );
    
    reg s,r;
    reg clk;
    wire q;
    wire qb;
    
    sr_ff sr(s,r,clk,q,qb);

initial begin
    s = 0;
    r = 0;
    clk = 1;
    #50 $stop;
  end
  
    always #20 clk = ~clk;
    always #50 s = ~s;
    always #150 r = ~r;
 
endmodule */


