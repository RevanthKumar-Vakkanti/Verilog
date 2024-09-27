`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 09:48:19
// Design Name: 
// Module Name: rip_carry
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

 module rip_carry(a,b,cin,sum,carry);

    input [3:0]a,b;
    input cin;
    output [3:0] sum;
    output carry;
    wire c1,c2,c3;
    full_adder fd1(a[0],b[0],cin,sum[0],c1);
    full_adder fd2(a[1],b[1],c1,sum[1],c2);
    full_adder fd3(a[2],b[2],c2,sum[2],c3);
    full_adder fd4(a[3],b[3],c3,sum[3],carry);

endmodule

/* module rip_carry(
    input a0,a1,a2,a3,
    input b0,b1,b2,b3,
    input cin,
    output s0,s1,s2,s3,
    output carry);
    wire c1,c2,c3;
    
    full_adder fd1(a0,b0,cin,s0,c1);
    full_adder fd2(a1,b1,c1,s1,c2);
    full_adder fd3(a2,b2,c2,s2,c3);
    full_adder fd4(a3,b3,c3,s3,carry);
endmodule*/