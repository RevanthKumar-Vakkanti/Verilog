`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 10:36:25
// Design Name: 
// Module Name: syn_down_counter
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


module syn_down_counter(
    input clk,rst,
    output [3:0]q,qb
    );
    
    wire [1:0]w;
    
    and(w[0],qb[0],qb[1]);
    and(w[1],w[0],qb[2]);
    
    jk_ff g1(clk,rst,1,1,q[0],qb[0]);
    jk_ff g2(clk,rst,qb[0],qb[0],q[1],qb[1]);
    jk_ff g3(clk,rst,w[0],w[0],q[2],qb[2]);
    jk_ff g4(clk,rst,w[1],w[1],q[3],qb[3]);
    
    
    
endmodule




