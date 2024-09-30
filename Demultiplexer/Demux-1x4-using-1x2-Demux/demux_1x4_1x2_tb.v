`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 10:50:37
// Design Name: 
// Module Name: demux_1x4_1x2_tb
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


module demux_1x4_1x2_tb(

    );
        reg i;
        reg [1:0]s;
        wire [3:0]y;
        
        demux_1x4_1x2 dmu(i,s,y);
        
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
    endmodule
    

