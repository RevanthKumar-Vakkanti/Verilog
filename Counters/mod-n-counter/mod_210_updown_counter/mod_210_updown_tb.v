`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 10:15:03
// Design Name: 
// Module Name: mod_210_updown_tb
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


module tb_mod_210_up_down;

    parameter n = 210;
    parameter N = 8;
    
    reg clk;
    reg rst;
    reg updown;
    wire [N-1:0] out;
    
    mod_210_up_down #(n, N) DUT (
        .clk(clk),
        .rst(rst),
        .updown(updown),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        updown = 1; 
        #10;

        rst = 0;
        #10;

        repeat (28) begin
            #10;
        end
        
        updown = 0;
        #10;
        
        repeat (28) begin
            #10;
        end
        
        $finish;
    end

    initial begin
        $monitor("Time = %0t | rst = %b | updown = %b | out = %d", $time, rst, updown, out);
    end

endmodule
