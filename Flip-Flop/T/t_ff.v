`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 09:43:08
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input t,clk,rst,
    output reg q
    );
    
    always @(posedge clk or  negedge rst) 
        begin
            if (!rst)
            begin
                q <= 0; 
            end
            else       
            begin
                q <= ~t; 
            end
        end
    endmodule
    
    
    
    
    
    
    
 /*   always @(posedge clk)
    begin
    if(rst)
        q<=0;
    else
        begin
            if(t==0)
                q<=q;
            else
                q =~q;
            end
     end
endmodule */
