`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 01:33:22
// Design Name: 
// Module Name: gray_bin
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


module gray_bin(
    input g0,g1,g2,
    output b0,b1,b2
    );
    wire w1;
 /*   xor (w1,g0,g1),(b0,w1,g2),(b1,g1,g2);
    buf (b2,g2); */
    assign w1 = g0^g1;
    assign b0 = w1^g2;
    assign b1 = g1^g2;
    assign b2 = g2;
endmodule
