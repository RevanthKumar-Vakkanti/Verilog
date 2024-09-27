`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 09:34:30
// Design Name: 
// Module Name: full_half_sub_tb
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


module full_half_sub_tb();
reg a,b,c;
wire diff,borr;

full_half_sub fs(a,b,c,diff,borr);
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
