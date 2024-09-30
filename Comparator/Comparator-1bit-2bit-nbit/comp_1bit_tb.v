`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 11:57:40
// Design Name: 
// Module Name: comp_1bit_tb
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


/*module comp_1bit_tb(

    );
    
    reg a,b;
    wire sma;
    wire eq;
    wire gre;
    
    comp_1bit c1(a,b,sma,eq,gre);
    initial begin
    
      a = 0; b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    
    #11 $finish;
    end 
endmodule */


/*module comp_2bit_tb(

    );
    
    reg [1:0]a,b;
    wire sma;
    wire eq;
    wire gre;
    
    comp_2bit c2(a,b,sma,eq,gre);
    initial begin
    
        a = 2'b00; b=2'b00;
    #10 a = 2'b00; b=2'b01;
    #10 a = 2'b00; b=2'b10;
    #10 a = 2'b00; b=2'b11;
    #10 a = 2'b01; b=2'b00;
    #10 a = 2'b01; b=2'b01;
    #10 a = 2'b01; b=2'b10;
    #10 a = 2'b01; b=2'b11;
    #10 a = 2'b10; b=2'b00;
    #10 a = 2'b10; b=2'b01;
    #10 a = 2'b10; b=2'b10;
    #10 a = 2'b10; b=2'b11;
    #10 a = 2'b11; b=2'b00;
    #10 a = 2'b11; b=2'b01;
    #10 a = 2'b11; b=2'b10;
    #10 a = 2'b11; b=2'b11;
    
    
    #11 $finish;
    end 
endmodule  */


module comp_nbit_tb(

    );
    parameter n = 8;
    reg [n-1:0]a,b;
    wire sma;
    wire eq;
    wire gre;
    
    comp_nbit #n cn(a,b,sma,eq,gre);
    initial begin
    
        a = 0; b=0;
        
    #10 a = 2; b=3;
    #10 a = 6; b=4;
    #10 a = 3; b=2;
    #10 a = 25; b=26;
    #10 a = 7; b=7;
    #11 $finish;
    end 
endmodule
