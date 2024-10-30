`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 10:47:56
// Design Name: 
// Module Name: half_adder_2x4_decoder
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


module half_adder_2x4_decoder(
    input a,b,
    output sum,carry
    );
    
    wire [3:0]d;
    
    and (d[0], ~a, ~b),
        (d[1], ~a,  b),
        (d[2],  a, ~b),
        (d[3],  a,  b);
    
    or (sum, d[1], d[2]);
    assign carry = d[3];
endmodule
