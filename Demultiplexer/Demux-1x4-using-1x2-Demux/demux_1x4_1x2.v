`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 10:41:29
// Design Name: 
// Module Name: demux_1x4_1x2
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


module demux_1x4_1x2(
    input i,
    input [1:0]s,
    output [3:0]y
    );
    wire [1:0]w;
    demux_1x2 d1(i,s[0],{w[0],w[1]});
    demux_1x2 d2(w[0],s[1],{y[0],y[1]});
    demux_1x2 d3(w[1],s[1],{y[2],y[3]});
endmodule
