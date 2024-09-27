`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 11:04:46
// Design Name: 
// Module Name: priority_4x2_en_tb
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


/* module priority_4x2_en_tb();

    reg y0,y1,y2,y3;
    wire i0,i1;

    priority_4x2_en pe(y0,y1,y2,y3,i0,i1);

    initial begin

    #10 y0 = 0; y1 = 0; y2 = 0; y3 = 0;
    #10 y0 = 0; y1 = 0; y2 = 0; y3 = 1;
    #10 y0 = 0; y1 = 0; y2 = 1; y3 = 0;
    #10 y0 = 0; y1 = 0; y2 = 1; y3 = 1;
    #10 y0 = 0; y1 = 1; y2 = 0; y3 = 0;
    #10 y0 = 0; y1 = 1; y2 = 0; y3 = 1;
    #10 y0 = 0; y1 = 1; y2 = 1; y3 = 0;
    #10 y0 = 0; y1 = 1; y2 = 1; y3 = 1;
    #10 y0 = 1; y1 = 0; y2 = 0; y3 = 0;
    #10 y0 = 1; y1 = 0; y2 = 0; y3 = 1;
    #10 y0 = 1; y1 = 0; y2 = 1; y3 = 0;
    #10 y0 = 1; y1 = 0; y2 = 1; y3 = 1;
    #10 y0 = 1; y1 = 1; y2 = 0; y3 = 0;
    #10 y0 = 1; y1 = 1; y2 = 0; y3 = 1;
    #10 y0 = 1; y1 = 1; y2 = 1; y3 = 0;
    #10 y0 = 1; y1 = 1; y2 = 1; y3 = 1;

    #100  $finish;
    end
endmodule */


module priority_8x3_en_tb();

    reg [7:0]y;
    wire [2:0]i;

    priority_8x3_en pen(y,i);

    initial begin

    #10 y = 8'b00000000;
    #10 y = 8'b00000001;
    #10 y = 8'b00000010;
    #10 y = 8'b00000100;
    #10 y = 8'b00001000;
    #10 y = 8'b00010000;
    #10 y = 8'b00100000;
    #10 y = 8'b01000000;
    #10 y = 8'b10000000;
    #10 y = 8'b10000011;       
    #10 y = 8'b00111000;  
    #10 y = 8'b00001111;
    #10 y = 8'b01010101;

    #100 $finish;
    end
endmodule
