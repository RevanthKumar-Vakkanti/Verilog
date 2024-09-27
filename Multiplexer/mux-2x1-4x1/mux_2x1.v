`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 11:22:10
// Design Name: 
// Module Name: mux_2x1
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


module mux_2x1(
    input [1:0]i,
    input sel,
    output y
    );
    
    assign y = (~sel & i[0]) | (sel & i[1]);
    
endmodule


/*module mux_4x1(
    input [3:0]i,
    input [1:0]s,
    output y
    );
    
  //  assign y = ((~s[0]) & (~s[1]) & i[0]) | ((~s[0]) & (s[1]) & i[1]) | ((s[0]) & (~s[1]) & i[2]) | ((s[0]) & (s[1]) & i[3]);
    
    assign y = s[0] ? (s[1] ? i[3] : i[2]) : (s[1] ? i[1] : i[0]);
endmodule  */



