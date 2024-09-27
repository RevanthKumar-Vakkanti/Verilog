`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 10:36:45
// Design Name: 
// Module Name: half_sub
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


module half_sub(
    input a,b,
    output reg diff,borrow
    );
   always @(*)
   begin 
   diff = a^b;
   borrow = ~a&&b;
   end
endmodule
