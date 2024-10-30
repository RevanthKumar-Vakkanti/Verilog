`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 10:52:27
// Design Name: 
// Module Name: half_adder_2x4_decoder_tb
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


module half_adder_2x4_decoder_tb(

    );
    
    reg a,b;
    wire sum,carry;
    
    half_adder_2x4_decoder  hd(a,b,sum,carry);
    initial begin
    
    {a,b} = 2'd0;
    #10 {a,b} = 2'd1;
    #10 {a,b} = 2'd2;
    #10 {a,b} = 2'd3;
    
    #10 $stop;
    end
endmodule
