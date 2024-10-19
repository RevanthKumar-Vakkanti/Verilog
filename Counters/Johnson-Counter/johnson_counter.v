`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 11:40:29
// Design Name: 
// Module Name: johnson_counter
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


/*module johnson_counter(
    input clk,rst,
    output reg [3:0]q
    );
    
    always @(posedge clk)
    begin
    if(rst==1)
        q=4'b0000;
    else
 //       q[0]<=~q[3];
 //       q[1]<=q[0];
 //       q[2]<=q[1];
 //       q[3]<=q[2];
        
        q <= {~q[0],q[3:1]};
   
    end
endmodule */





module johnson_counter(
    input clk,rst,
    output  [3:0]q,
    output [3:0]qb
    );
    
    wire d;
    
    d_ff g1(d,clk,rst,q[0],qb[0]);
    d_ff g2(q[0],clk,rst,q[1],qb[1]);
    d_ff g3(q[1],clk,rst,q[2],qb[2]);
    d_ff g4(q[2],clk,rst,q[3],qb[3]);
    
    assign d = qb[3];
endmodule 



// d Flip-Flop
module d_ff(
    input d,clk,rst,
    output reg q,
    output qb
    );
    
    always @(posedge clk)
    begin
        if(rst)
            q<=0;
        else
            q<=d;
    end
    assign qb = ~q;
endmodule
