`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 10:21:43
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a,b,c;
wire sum,carry;

full_adder fa(a,b,c,sum,carry);
initial begin
{a,b,c} = 3'b000;

#10 {a,b,c} = 3'b001;
#10 {a,b,c} = 3'b010;
#10 {a,b,c} = 3'b011;
#10 {a,b,c} = 3'b100;
#10 {a,b,c} = 3'b101;
#10 {a,b,c} = 3'b110;
#10 {a,b,c} = 3'b111;
#10 $finish;
end 
endmodule
