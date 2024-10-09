`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 05:10:51
// Design Name: 
// Module Name: dram
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


module dram(
    input clk,w1,w2,
    input [7:0]d1,d2,
    input [7:0]addr1,addr2,
    output reg [7:0]dout1,dout2
    );
    
    reg [3:0] ram[31:0];
    always @(posedge clk)
    begin
        if(w1)
            begin
                ram[addr1]<=d1;
                dout1<=0;
                dout2<=0;
            end
        if(w2)
            begin
                ram[addr2]<=d2;
                dout1<=0;
                dout2<=0;
            end
            
        else
            begin
                dout1<=ram[addr1];
                dout2<=ram[addr2];
            end
    end
endmodule
