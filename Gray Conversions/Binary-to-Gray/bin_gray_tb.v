`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 16:50:09
// Design Name: 
// Module Name: bin_gray_tb
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


module bin_gray_tb();
reg b0,b1,b2;
wire g0,g1,g2;
bin_gray bg(b0,b1,b2,g0,g1,g2);

initial begin

b0=0; b1=0;b2=0;

#10 b0=0; b1=0;b2=1;
#10 b0=0; b1=1;b2=0;
#10 b0=0; b1=1;b2=1;
#10 b0=1; b1=0;b2=0;
#10 b0=1; b1=0;b2=1;
#10 b0=1; b1=1;b2=0;
#10 b0=1; b1=1;b2=1;
#10 $finish;
end
endmodule
