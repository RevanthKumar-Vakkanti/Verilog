`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 10:17:55
// Design Name: 
// Module Name: decoder_2x4_tb
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


/* module decoder_2x4_tb(

    );
    reg [1:0]i;
    reg en;
    wire [3:0]y;
    
    decoder_2x4 de(i,en,y);
    
    initial begin
    
    en =1; i =2'bxx;
     
    #10 en = 0;i = 2'b00;
    #10 en = 0;i = 2'b01;
    #10 en = 0;i = 2'b10;
    #10 en = 0;i = 2'b11;
    
    #10 $finish;
    end
endmodule */


module decoder_3x8_tb(

    );
    reg [2:0]i;
    reg en;
    wire [7:0]y;
    
    decoder_3x8 dec(i,en,y);
    
    initial begin
    
    en =1; i =3'bxxx;
     
    #10 en = 0;i = 3'b000;
    #10 en = 0;i = 3'b001;
    #10 en = 0;i = 3'b010;
    #10 en = 0;i = 3'b011;
    #10 en = 0;i = 3'b100;
    #10 en = 0;i = 3'b101;
    #10 en = 0;i = 3'b110;
    #10 en = 0;i = 3'b111;
    
    #10 $finish;
    end
endmodule


