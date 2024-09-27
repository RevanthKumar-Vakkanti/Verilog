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
{a,b,cin} = 3'b000;

#10 {a,b,cin} = 3'b001;
#10 {a,b,cin} = 3'b010;
#10 {a,b,cin} = 3'b011;
#10 {a,b,cin} = 3'b100;
#10 {a,b,cin} = 3'b101;
#10 {a,b,cin} = 3'b110;
#10 {a,b,cin} = 3'b111;

#10 $finish;
end
endmodule
