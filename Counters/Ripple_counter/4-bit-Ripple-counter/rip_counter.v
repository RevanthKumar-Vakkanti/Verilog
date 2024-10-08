`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 10:45:57
// Design Name: 
// Module Name: rip_counter
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


module rip_counter(
    input clk,rst,
    output [3:0]q
    );
    
    t_ff g0(clk,rst,q[0]);
    t_ff g1(q[0],rst,q[1]);
    t_ff g2(q[1],rst,q[2]);
    t_ff g3(q[2],rst,q[3]);
    
endmodule



/*module t_ff(clk,rst,q);
input clk,rst;
output q;
wire d;
d_ff g(d,clk,rst,q);
not(d,q);
endmodule

module d_ff(din,clk,rst,q);
input din,clk,rst;
output reg q;
always @(posedge clk) begin
if(!rst)
    q <= 0;
else
    q <= din;
end
endmodule*/