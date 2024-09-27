`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 12:09:49
// Design Name: 
// Module Name: full_half_adder_tb
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


module full_half_adder_tb();
reg a,b,cin;
wire sum,carry;

full_half_adder hf(a,b,cin,sum,carry);
initial begin
{a,b,cin} = 3'b000;

#10 {a,b,cin} = 3'b001;
#10 {a,b,cin} = 3'b010;
#10 {a,b,cin} = 3'b011;
#10 {a,b,cin} = 3'b100;
#10 {a,b,cin} = 3'b101;
#10 {a,b,cin} = 3'b110;
#10 {a,b,cin} = 3'b111;
#100 $finish;
end 
endmodule
