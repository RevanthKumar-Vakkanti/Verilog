`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 09:33:08
// Design Name: 
// Module Name: demux_1x2_tb
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


module demux_1x2_tb(

    );
    
    reg i;
    reg s;
    wire [1:0]y;
    
    demux_1x2 dm(i,s,y);
    
    initial begin
    
    #10 s=0; i=0;
     #10 s=0; i=1;
      #10 s=1; i=0;
       #10 s=1; i=1;
       
       #12 $stop;
       end
endmodule




/*module demux_1x4_tb(

    );
    
    reg i;
    reg [1:0]s;
    wire [3:0]y;
    
    demux_1x4 dmu(i,s,y);
    
    initial begin
    
    s=2'b00; i=0; 
   #10 s=2'b00; i=1;
   #10 s=2'b01; i=0;
   #10 s=2'b01; i=1;
   #10 s=2'b10; i=0;
   #10 s=2'b10; i=1;
   #10 s=2'b11; i=0;
   #10 s=2'b11; i=1;
       
       #12 $stop;
       end
endmodule */



/*module demux_1x8_tb(

    );
    
    reg i;
    reg [2:0]s;
    wire [7:0]y;
    
    demux_1x8 dx(i,s,y);
    
    initial begin
    
       s=3'b000; i=0; s=3'b000; i=1; 
       
   #10 s=3'b001; i=0;
   #10 s=3'b001; i=1;
   
   #10 s=3'b010; i=0;
   #10 s=3'b010; i=1;
   
   #10 s=3'b011; i=0;
   #10 s=3'b011; i=1;
   
   #10 s=3'b100; i=0;
   #10 s=3'b100; i=1;
   
   #10 s=3'b101; i=0;
   #10 s=3'b101; i=1;
   
   #10 s=3'b110; i=0;
   #10 s=3'b110; i=1;
   
   #10 s=3'b111; i=0;
   #10 s=3'b111; i=1;    
       
       #12 $stop;
       end
endmodule  */

