`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 10:56:42
// Design Name: 
// Module Name: demux_1x8_1x2
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


module demux_1x8_1x2(
    input i,
    input [2:0]s,
    output [7:0]y
    );
        wire [5:0]w;
    demux_1x2 d0(   i,s[0],{w[0],w[1]});    
    demux_1x2 d1(w[0],s[1],{w[2],w[3]});
    demux_1x2 d2(w[1],s[1],{w[4],w[5]});
    demux_1x2 d3(w[2],s[2],{y[0],y[1]});
    demux_1x2 d4(w[3],s[2],{y[2],y[3]});
    demux_1x2 d5(w[4],s[2],{y[4],y[5]});
    demux_1x2 d6(w[5],s[2],{y[6],y[7]});
        
endmodule
