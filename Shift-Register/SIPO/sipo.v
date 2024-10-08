`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 10:23:09
// Design Name: 
// Module Name: sipo
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


module sipo(
    input clk,rst,din,
    output reg [3:0]q
    );
 
    
    always @(posedge clk)
    begin
    if(rst)
        q<=1'b0;
    else 
     /*   q[0]<=din;
        q[1]<=q[0];
        q[2]<=q[1];
        q[3]<=q[2];*/
        
        q<={q[3:0],din};
    end
endmodule
