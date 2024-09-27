`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 10:58:14
// Design Name: 
// Module Name: full_sub_tb
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


module full_sub_tb();
reg a,b,c;
wire diff,borr;
full_sub fs(a,b,c,diff,borr);
initial begin
{a,b,c} = 4'b0000;

#10 {a,b,c} = 4'b0001;
#10 {a,b,c} = 4'b0010;
#10 {a,b,c} = 4'b0011;
#10 {a,b,c} = 4'b0100;
#10 {a,b,c} = 4'b0101;
#10 {a,b,c} = 4'b011;
#10 {a,b,c} = 4'b0111;
#10 {a,b,c} = 4'b1000;
#10 {a,b,c} = 4'b1001;
#10 {a,b,c} = 4'b1010;
#10 {a,b,c} = 4'b1011;
#10 {a,b,c} = 4'b1100;
#10 {a,b,c} = 4'b1101;
#10 {a,b,c} = 4'b1110;
#10 {a,b,c} = 4'b1111;

#10 $finish;
end
endmodule
