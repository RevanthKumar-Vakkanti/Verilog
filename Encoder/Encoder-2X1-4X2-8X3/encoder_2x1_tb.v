`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 18:16:15
// Design Name: 
// Module Name: encoder_2x1_tb
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

/* module encoder_2x1_tb();

    reg y0,y1;
    wire a;

    encoder_2x1 en(.y0(y0),.y1(y1),.a(a));

    initial begin 

    {y0,y1} = 2'b00;
    
    #10 {y0,y1} = 2'b01;
    #10 {y0,y1} = 2'b10;
    #10 {y0,y1} = 2'b11;

    #10 $finish;
    end

endmodule  */


//4x2 Encoder

/* module encoder_4x2_tb();

    reg i0,i1,i2,i3;
    wire a0,a1;

    encode_4x2 enn(i0,i1,i2,i3,a0,a1);

    initial begin 


    #10 i0=1; i1=0; i2=0; i3=0;
    #10 i0=0; i1=1; i2=0; i3=0;
    #10 i0=0; i1=0; i2=1; i3=0;
    #10 i0=0; i1=0; i2=0; i3=1;

    #100 $finish;
    end
endmodule */


// 8x3 Encoder

module encoder_8x3_tb();

    reg i0,i1,i2,i3,i4,i5,i6,i7;
    wire a0,a1,a2;

    encoder_8x3 enn(i0,i1,i2,i3,i4,i5,i6,i7,a0,a1,a2);

    initial begin 


    #10 i0=1; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0;
    #10 i0=0; i1=1; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0;
    #10 i0=0; i1=0; i2=1; i3=0; i4=0; i5=0; i6=0; i7=0;
    #10 i0=0; i1=0; i2=0; i3=1; i4=0; i5=0; i6=0; i7=0;
    #10 i0=0; i1=0; i2=0; i3=0; i4=1; i5=0; i6=0; i7=0;
    #10 i0=0; i1=0; i2=0; i3=0; i4=0; i5=1; i6=0; i7=0;
    #10 i0=0; i1=0; i2=0; i3=0; i4=0; i5=0; i6=1; i7=0;
    #10 i0=0; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=1;

    #100 $finish;
    end
endmodule
