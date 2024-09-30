`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 11:13:07
// Design Name: 
// Module Name: demux_1x8_1x2_tb
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


module demux_1x8_1x2_tb(

    );
    
        reg i;
        reg [2:0]s;
        wire [7:0]y;
        
        demux_1x8_1x2 dx(i,s,y);
        
        initial begin
        
        //   s=3'b000; i=0; 
           s=3'b000; i=1; 
           
    //   #10 s=3'b001; i=0;
       #10 s=3'b001; i=1;
       
    //   #10 s=3'b010; i=0;
       #10 s=3'b010; i=1;
       
   //    #10 s=3'b011; i=0;
       #10 s=3'b011; i=1;
       
   //    #10 s=3'b100; i=0;
       #10 s=3'b100; i=1;
       
    //   #10 s=3'b101; i=0;
       #10 s=3'b101; i=1;
       
    //   #10 s=3'b110; i=0;
       #10 s=3'b110; i=1;
       
    //   #10 s=3'b111; i=0;
       #10 s=3'b111; i=1;    
           
           #12 $stop;
           end

endmodule
