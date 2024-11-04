`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 04:46:24
// Design Name: 
// Module Name: ram_tb
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


module ram_tb(

    );
    reg [3:0]din;
    reg [4:0]addr;
    reg clk,w;
    wire [3:0] dout;
    
    ram me(din,addr,clk,w,dout);
    
    initial 
        begin
            clk=1'b1;
            forever #10 clk=~clk;
        end
    initial begin
          w=1;din=4'b1010;addr=5'b00011;
     #100 w=1;din=4'b1001;addr=5'b00001;
     #100 w=0;addr=5'b00011;
     #100 w=0;addr=5'b00001;
     #200 w=1;din=4'b1100;addr=5'b00010;
     
     #500 $finish;
     end
endmodule
