`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 12:06:01
// Design Name: 
// Module Name: mux_2X1_tb
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


/*module mux_2X1_tb();
    
    reg [1:0]i;
    reg sel;
    wire y;
    
    mux_2x1 mu(i,sel,y);
    
    initial begin
     
    sel = 1'b0; i = 2'b00;
    #10 i = 2'b11;
    #10 sel = 1'b1;
    #10 i = 2'b11;
    
    #15 $stop;
    end
endmodule */



module mux_4X1_tb();
    
    reg [3:0]i;
    reg [0:1]s;
    wire y;
    
    mux_2x1 mux(i,s,y);
    
    initial begin
     
        s = 2'b00; i = 4'b0101;
    #10 s = 2'b01; i = 4'b0110;
    #10 s = 2'b10; i = 4'b0111;
    #10 s = 2'b11; i = 4'b1101;
    
    
    #15 $stop;
    end
endmodule
