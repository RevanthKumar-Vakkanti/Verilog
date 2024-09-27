`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 16:47:30
// Design Name: 
// Module Name: bin_gray
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


module bin_gray(
    input b0,b1,b2,
    output g0,g1,g2
    );
    
  /*  xor (g0,b0,b1),(g1,b1,b2);
    buf (g2,b2); */
    
    assign g0 = b0^b1;
    assign g1 = b1^b2;
    assign g2 = b2;
endmodule
