`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 11:53:03
// Design Name: 
// Module Name: comp_1bit
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


/*module comp_1bit(
    input a,b,
    output reg sma,
    output reg eq,
    output reg gre
    );
    
    always @(*)
    begin
        sma = (a<b);
        eq  = (a==b);
        gre = (a>b);
    end
endmodule */



/*module comp_2bit(
    input [1:0]a,b,
    output reg sma,
    output reg eq,
    output reg gre
    );
    
    always @(*)
    begin
        sma = (a<b);
        eq  = (a==b);
        gre = (a>b);
    end
endmodule */


module comp_nbit #(parameter n = 8)(
    input [n-1:0]a,b,
    output reg sma,
    output reg eq,
    output reg gre
    );
    
    always @(*)
    begin
        sma = (a<b);
        eq  = (a==b);
        gre = (a>b);
    end
endmodule
