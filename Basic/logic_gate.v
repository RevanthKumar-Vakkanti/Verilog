`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 17:26:04
// Design Name: 
// Module Name: logic_gate
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


module logic_gate(
    input a,b,
    output y0,y1,y2,y3,y4,y5,y6
    );
    and (y0,a,b);
    or (y1,a,b);
    not (y2,a);
    nand (y3,a,b);
    nor (y4,a,b);
    xor (y5,a,b);
    xnor (y6,a,b);
endmodule
