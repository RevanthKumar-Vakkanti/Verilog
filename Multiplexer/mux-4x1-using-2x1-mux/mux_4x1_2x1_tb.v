`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 15:28:58
// Design Name: 
// Module Name: mux_4x1_2x1_tb
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


module mux_4x1_2x1_tb();

reg i0,i1,i2,i3;
reg s0,s1;
wire y;

mux_4x1_2x1 mux(i0,i1,i2,i3,s0,s1,y);

initial begin

i0 = 0; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 0; 

#10 i0 = 1; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 0; 
#10 i0 = 0; i1 = 1; i2 = 0; i3 = 0; s0 = 0; s1 = 1; 
#10 i0 = 0; i1 = 0; i2 = 1; i3 = 0; s0 = 1; s1 = 0; 
#10 i0 = 0; i1 = 0; i2 = 0; i3 = 1; s0 = 1; s1 = 1; 
#10 i0 = 1; i1 = 0; i2 = 1; i3 = 0; s0 = 1; s1 = 0; 
#10 i0 = 1; i1 = 1; i2 = 1; i3 = 1; s0 = 1; s1 = 1; 

#12 $stop;
end
endmodule
