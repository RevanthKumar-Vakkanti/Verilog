`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 09:24:42
// Design Name: 
// Module Name: full_half_sub
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


module full_half_sub(
    input a,b,c,
    output diff,borr
    );
    
    wire d1,n1,n2,b1,b2;
    half_sub hs1 (a,b,d1,b1);
    half_sub hs2 (d1,c,diff,b2);
    assign borr = b1 | b2;
endmodule
