`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 01:37:41
// Design Name: 
// Module Name: gray_bin_tb
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


module gray_bin_tb();
reg g0,g1,g2;
wire b0,b1,b2;
gray_bin gb(g0,g1,g2,b0,b1,b2);
initial begin
g0=0; g1=0; g2=0;

#10 g0=0; g1=0; g2=1;
#10 g0=0; g1=1; g2=1;
#10 g0=0; g1=1; g2=0;
#10 g0=1; g1=1; g2=0;
#10 g0=1; g1=1; g2=1;
#10 g0=1; g1=0; g2=1;
#10 g0=1; g1=0; g2=0;

#10 $finish;
end
endmodule
