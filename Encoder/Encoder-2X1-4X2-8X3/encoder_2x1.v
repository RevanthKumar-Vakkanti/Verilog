`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 18:15:10
// Design Name: 
// Module Name: encoder_2x1
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

// 2x1 Encoder

/* module encoder_2x1( 
    input y0,y1,
    output a
    );
    
    assign a = y1;
endmodule */


// 4x2 Encoder

/* module encoder_4x2(
    input i0,i1,i2,i3,
    output a0,a1
    );
    
    assign a0 = i2 | i3;
    assign a1 = i1 | i3;
    
endmodule */



// 8x3 Encoder

module encoder_8x3(
    input io,i1,i2,i3,i4,i5,i6,i7,
    output a0,a1,a2
    );
    
    assign a0 = i4 | i5 | i6 | i7;
    assign a1 = i2 | i3 | i6 | i7;
    assign a2 = i1 | i3 | i5 | i7;
    
endmodule