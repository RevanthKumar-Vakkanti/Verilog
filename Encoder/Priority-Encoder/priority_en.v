`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 10:59:41
// Design Name: 
// Module Name: priority_en
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


/*module priority_4x2_en(
    input y0,y1,y2,y3,
    output i0,i1
    );
    
    assign i0 = y3 | (y1 & (~y2));
    assign i1 = y3 | y2;  
endmodule */




module priority_8x3_en(y,i);

    input [7:0]y;
    output [2:0]i;
    
    assign i[2] = y[7] | y[6] | y[5] | y[4];
    assign i[1] = y[7] | y[6] | ((y[3] | y[2]) & (~y[5] & (~y[4])));
    assign i[0] = y[7] | y[5] | ((y[3] | y[1]) & (~y[6] & (~y[4])));
    
    
endmodule