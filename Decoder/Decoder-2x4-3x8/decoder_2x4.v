`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 10:04:45
// Design Name: 
// Module Name: decoder_2x4
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


/* module decoder_2x4(
    input [1:0]i,
    input en,
    output reg [3:0]y
    );
    
 //   assign i[0] = ~y[0] & (~y[1]);
 //   assign i[1] = ~y[0] & (y[1]);
 //   assign i[2] =  y[0] & (~y[1]);
 //   assign i[3] =  y[0] & (y[1]);
    
    always @(*) begin
        if (en==0) begin
            if (i == 2'b00)
                y = 4'b1110;
            else if (i == 2'b01)
                y = 4'b1101;
            else if (i == 2'b10)
                y = 4'b1011;
          //  else if (i == 2'b11)
            //    y = 4'b1000;
            else
                y = 4'b0111; 
        end else begin
            y = 4'b1111; 
        end
    end
endmodule   */


module decoder_3x8(
    input [2:0] i,
    input en,
    output reg [7:0]y
    );
    
    always @(*) 
        begin
            if(en==0) 
                begin
                    if (i == 3'b000) y = 8'b11111110;
                        else if (i == 3'b001) y = 8'b11111101;
                            else if (i == 3'b010) y = 8'b11111011;
                                else if (i == 3'b011) y = 8'b11110111;
                                    else if (i == 3'b100) y = 8'b11101111;
                                        else if (i == 3'b101) y = 8'b11011111;
                                            else if (i == 3'b110) y = 8'b10111111;
                                                else y = 8'b01111111;
                        
                end
                
                else 
                    y = 8'b11111111;
         end
endmodule
    
