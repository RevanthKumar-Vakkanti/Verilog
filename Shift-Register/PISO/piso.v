`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 12:19:09
// Design Name: 
// Module Name: piso
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


module piso(
    input clk,load,rst,
    input[3:0]din,
    output reg q
    );
    reg [3:0]tmp;
    
    always @(posedge clk)
    begin
        if(rst)
        begin
            q=0;
        end
       else if(load) begin
            tmp=din;
            q=0;
            end
        else
            begin
                q=tmp[3];
                tmp={tmp[2:0],1'b0};
            end
     end
endmodule
