`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 05:22:48
// Design Name: 
// Module Name: dram_tb
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


module dram_tb(

    );
     reg clk,w1,w2;
     reg [7:0]d1,d2;
     reg [7:0]addr1,addr2;
     wire [7:0]dout1,dout2;
     
     dram dme(clk,w1,w2,d1,d2,addr1,addr2,dout1,dout2);
     
     initial clk=1'b1;
     always #10 clk=~clk;
     
     initial begin
     w1=1; d1=8'd01; addr1=8'd01;
     w2=1; d2=8'd05; addr2=8'd04;
     #100 w1=0; addr1=8'd01;
          w2=0; addr2=8'd04;
     
     #100 $finish;
     end
endmodule
