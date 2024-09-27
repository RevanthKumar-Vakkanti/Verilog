`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 14:00:14
// Design Name: 
// Module Name: mux_4x1_2x1
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


module mux_4x1_2x1(
    input i0,i1,i2,i3,
    input s0,s1,
    output y
    );
    
    wire w0,w1;
    
    mux_2x1 mux1 ({i0,i1},s0,w0);
    mux_2x1 mux2 ({i2,i3},s0,w1);
    mux_2x1 mux3 ({w0,w1},s1,y);
endmodule 


/*module mux_4x1_2x1(
    input i0, i1, i2, i3,  
    input s0, s1,          
    output y               
    );
    
    wire w0, w1;
    
    
    mux_2x1 mux1 (.i({i1, i0}), .sel(s1), .y(w0));  

    mux_2x1 mux2 (.i({i3, i2}), .sel(s1), .y(w1));  
   
    mux_2x1 mux3 (.i({w1, w0}), .sel(s0), .y(y));  
    
endmodule */
