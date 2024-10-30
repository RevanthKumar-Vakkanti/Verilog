`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 10:17:40
// Design Name: 
// Module Name: ex_3_code_tb
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


module ex_3_code_tb(

    );
    
    reg [3:0]bin;
    wire [3:0]ex;
    
    ex_3_code be(bin,ex);
    
    initial begin
    
    bin = 4'd0;
    #10 bin = 4'd1;
    #10 bin = 4'd2;
    #10 bin = 4'd3;
    #10 bin = 4'd4;
    #10 bin = 4'd5;
    #10 bin = 4'd6;
    #10 bin = 4'd7;
    #10 bin = 4'd8;
    #10 bin = 4'd9;
    #10 bin = 4'd10;
    #10 bin = 4'd11;
    #10 bin = 4'd12;
    #10 bin = 4'd13;
    #10 bin = 4'd14;
    #10 bin = 4'd15;
    
    #12 $stop;
    end
endmodule
