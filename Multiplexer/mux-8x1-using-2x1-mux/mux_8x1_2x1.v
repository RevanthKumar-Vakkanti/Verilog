`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2024 09:36:36
// Design Name: 
// Module Name: mux_8x1_2x1
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


module mux_8x1_2x1(
    input [7:0]i,
    input [2:0]s,
    output y
    );
    
    wire [5:0]w;
    
    mux_2x1 m1({i[0],i[1]},s[0],w[0]);
    mux_2x1 m2({i[2],i[3]},s[0],w[1]);
    mux_2x1 m3({i[4],i[5]},s[0],w[2]);
    mux_2x1 m4({i[6],i[7]},s[0],w[3]);
    mux_2x1 m5({w[0],w[1]},s[1],w[4]);
    mux_2x1 m6({w[2],w[3]},s[1],w[5]);
    mux_2x1 m7({w[4],w[5]},s[2],y);


endmodule
