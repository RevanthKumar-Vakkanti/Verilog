`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 10:42:25
// Design Name: 
// Module Name: half_sub_tb
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


module half_sub_tb();
reg a,b;
wire diff,borrow;

half_sub hs(a,b,diff,borrow);

initial begin 
{a,b} = 2'b00;
#10 {a,b} = 2'b01;
#10 {a,b} = 2'b10;
#10 {a,b} = 2'b11;
#10 $finish;
end
endmodule
