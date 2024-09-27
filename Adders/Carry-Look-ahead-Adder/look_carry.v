`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 10:20:15
// Design Name: 
// Module Name: look_carry
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


/*module look_carry(
    input [3:0]a,b,
    input cin,
    output [3:0]s,
    output cout
    );
    
    wire [3:0] c;
    
    full_adder fa1(a[0],b[0],cin,s[0],c[0]);
    full_adder fa2(a[1],b[1],c[0],s[1],c[1]);
    full_adder fa3(a[2],b[2],c[1],s[2],c[2]);
    full_adder fa4(a[3],b[3],c[2],s[3],c[3]);
    
    assign cout = c[0] | c[1] | c[2] | c[3];
       
    
endmodule */


module l_ahead(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output cout
    );

    wire [3:0]g,p,c;
    assign g = a & b;
    assign p= a ^ b;
    
    assign c[0] = cin;
    assign c[1] =  (p[0] & c[0]) | g[0];
    assign c[2] = g[1] | p[1] & c[1];
    assign c[3] = g[2] | (p[2] & c[2]);
    assign cout = g[3] | ( p[3] &c[3]);
    assign sum = p ^ cin;
    //assign sum[1] = p[1] ^ c[1];
    //assign sum[2] = p[2] ^ c[2];
    //assign sum[3] = p[3] ^ c[3];
    
endmodule
