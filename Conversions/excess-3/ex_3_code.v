`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2024 10:14:30
// Design Name: 
// Module Name: ex_3_code
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

//binary to excess-3 code
/*module ex_3_code(
    input [3:0]bin,
    output [3:0]ex
    );
    
    assign ex = bin + 4'd3;
    
endmodule*/


//excess-3 to binary 

module ex_3_code(
    input [3:0]bin,
    output [3:0]ex
    );
    
    assign ex = bin - 4'd3;
    
endmodule

