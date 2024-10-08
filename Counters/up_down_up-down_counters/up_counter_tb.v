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

//up counter
/*module up_counter_tb();
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



//down counter
/*module down_counter_tb();
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


//up-down counter
/*module up_down_counter_tb();
    reg clk;
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
endmodule*/



//taking two output variables 
/*module up_down_counter_tb();
    reg clk;
    reg rst,up_down;
    wire [3:0]out;
    wire [3:0]q;
    
    up_down_counter ud(clk,rst,up_down,out,q);
    
    initial clk=0;
    always #10 clk = ~clk;
    
    initial begin
    
    rst = 1; up_down =1;
    #200 rst =0;
    #300 up_down =0;
     
    #500 $finish;
    end
endmodule*/



//USING PARAMETER and two variables 
module up_down_counter_tb #(parameter N=5)();
    reg clk;
    reg rst,up_down;
    wire [N-1:0]out;
    wire [N-1:0]q;
    
    up_down_counter #(N) ud(clk,rst,up_down,out,q);
    
    initial clk=0;
    always #10 clk = ~clk;
    
    initial begin
    
    rst = 1; up_down =1;
    #200 rst =0;
    #300 up_down =0;
     
    #500 $finish;
    end
endmodule
