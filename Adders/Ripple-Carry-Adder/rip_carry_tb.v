`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 09:57:00
// Design Name: 
// Module Name: rip_carry_tb
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


module rip_carry_tb();
reg [3:0]a,b; 
reg cin;
wire [3:0] sum;
wire carry;

rip_carry rpa(a,b,cin,sum,carry);

initial begin
a = 4'd0; b = 4'd0; cin=0;
        #10 a=4'd3;b=4'd7; cin=0;
        #10 a=4'd13;b=4'd14; cin=0;
        #10 a=4'd7;b=4'd10; cin=0; 

#10 $finish;
end
endmodule
