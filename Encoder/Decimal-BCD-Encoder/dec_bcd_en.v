`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 20:21:41
// Design Name: 
// Module Name: dec_bcd_en
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


module dec_bcd_en(y,a);

input [9:0]y;
output [3:0]a;

assign a[3] = y[9] | y[8];
assign a[2] = y[7] | y[6] | y[5] | y[4];
assign a[1] = y[7] | y[6] | y[3] | y[2];
assign a[0] = y[9] | y[7] | y[5] | y[3] | y[1];
    
endmodule
