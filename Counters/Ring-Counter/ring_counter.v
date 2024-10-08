`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 09:30:16
// Design Name: 
// Module Name: ring_counter
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


/*module ring_counter(
    input d,clk,rst,
    output reg [3:0]q
    );
    
    always @(posedge clk)
    begin
        if(rst)
            q<=d;
        else
         //   q[0]<=q[3];
         //   q[1]<=q[0];
         //   q[2]<=q[1];
         //   q[3]<=q[2];
         
         q<={q[2:0],q[3]};
    end
    
endmodule */


/*module ring_counter (
    input clk,
    input rst,
    output [3:0] q
);
    
    wire d;
    

    d_ff g0(d, clk, rst, q[0]);
    d_ff g1(q[0], clk, rst, q[1]);
    d_ff g2(q[1], clk, rst, q[2]);
    d_ff g3(q[2], clk, rst, q[3]);
    
  
    assign d = q[3];  

endmodule*/

module ring_counter(
    input clk,rst,
    output  [3:0]q,
    output [3:0]qb
    );
    
    wire d;
    
    d_ff g1(d,clk,rst,q[0],qb[0]);
    d_ff g2(q[0],clk,rst,q[1],qb[1]);
    d_ff g3(q[1],clk,rst,q[2],qb[2]);
    d_ff g4(q[2],clk,rst,q[3],qb[3]);
    
    assign d = q[3];
endmodule 

