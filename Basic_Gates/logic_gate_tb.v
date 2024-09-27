`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 17:36:20
// Design Name: 
// Module Name: logic_gate_tb
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


module logic_gate_tb();

reg a,b;
wire y0,y1,y2,y3,y4,y5,y6;

logic_gate aor(a,b,y0,y1,y2,y3,y4,y5,y6);

initial begin

a=0;b=0;

#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;

#100 $finish;
end
endmodule
