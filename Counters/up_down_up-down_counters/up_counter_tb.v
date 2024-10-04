`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 12:44:18
// Design Name: 
// Module Name: up_counter_tb
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


/*module up_counter_tb(

    );
    reg clk;
    reg [3:0]a;
    reg rst;
    wire [3:0]upout;
    
    up_counter up(clk,a,rst,upout);
    
    always #5 clk = ~clk;
    initial begin
        a=4'b0000; clk=0; rst=0;
        
//   #10 rst = 1; a=4'b1101;
//   a=4'b1111;
//   #20 rst = 0;
 
      #10 rst = 1;
      #10 rst =0;
      
      #100 $stop;
    end
endmodule */




/*module down_counter_tb(

    );
    reg clk;
    reg [3:0]a;
    reg rst;
    wire [3:0]upout;
    
    down_counter down(clk,a,rst,upout);
    
    always #5 clk = ~clk;
    initial begin
        a=4'b1111; clk=0; //rst=0;
        
//   #10 rst = 1; a=4'b1101;
//   a=4'b1111;
//   #20 rst = 0;
 
      #10 rst = 1;
      #15 rst =0;

      
      #200 $finish;
    end
endmodule */



module up_down_counter_tb(

    );
    reg clk;
 //   reg [3:0]a;
    reg rst,up_down;
    wire [3:0]out;
    
    up_down_counter ud(clk,rst,up_down,out);
    
    initial clk=0;
    always #10 clk = ~clk;
    
    initial begin
    
    rst = 1; up_down =1;
    #200 rst =0;
    #300 up_down =0;
     
    #350 $finish;
    end
endmodule
