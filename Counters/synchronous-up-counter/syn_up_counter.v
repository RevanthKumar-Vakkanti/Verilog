`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 09:36:36
// Design Name: 
// Module Name: syn_up_counter
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


module syn_up_counter(
    input clk,rst,
    output [3:0]q,qb
    );
    
    wire [1:0]w;
    
    assign w[0] = q[0] & q[1];
    assign w[1] = w[0] & q[2];
    
    jk_ff g1(clk,rst,1,1,q[0],qb[0]);
    jk_ff g2(clk,rst,q[0],q[0],q[1],qb[1]);
    jk_ff g3(clk,rst,w[0],w[0],q[2],qb[2]);
    jk_ff g4(clk,rst,w[1],w[1],q[3],qb[3]);
    

endmodule
