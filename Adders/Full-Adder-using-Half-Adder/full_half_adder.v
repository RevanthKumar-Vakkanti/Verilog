`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 11:44:34
// Design Name: 
// Module Name: full_half_adder
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

module full_half_adder(
    input a,b,cin,
    output sum,carry
    );
    
    wire s1,c1,c2;
    half_adder ha1(a,b,s1,c1);
    half_adder ha2(s1,cin,sum,c2);
    assign carry = c1|c2;
    
endmodule
