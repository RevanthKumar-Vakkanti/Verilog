`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 18:51:00
// Design Name: 
// Module Name: mealy_1010
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


module mealy_1010(
    input din,clk,rst,
    output reg dout
    );
    
    reg [1:0] cur_st, nxt_st;
    
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    parameter s3 = 2'b11;
    
    always @(posedge clk)
    begin
        if(rst)
            cur_st <= s0;
        else
            cur_st <= nxt_st;  
    end
    
    always @(*)
    begin
        case(cur_st)
            s0:if(din == 1'b1)
                begin
                    nxt_st <= s1;
                    dout <= 1'b0;
                end
                else
                begin
                    nxt_st <= cur_st;
                    dout <= 1'b0;
                end
                
            s1:if(din == 1'b0)
                begin
                    nxt_st <= s2;
                    dout <= 1'b0;
                end
                else
                begin
                    nxt_st <= cur_st;
                    dout <= 1'b0;
                end
                
            s2:if(din == 1'b1)
                begin
                    nxt_st <= s3;
                    dout <= 1'b0;
                end
                else
                begin
                    nxt_st <= s0;
                    dout <= 1'b0;
                end
                
      /*      s3:if(din == 1'b0) //overlapping
                 begin
                     nxt_st <= s2;
                     dout <= 1'b1;
                 end
                 else
                 begin
                     nxt_st <= s1;
                     dout <=1'b0;
                 end */
                
              s3:if(din ==1'b0) //Non-overlapping
                 begin
                     nxt_st <= s0;
                     dout <= 1;
                 end
                 else
                 begin
                     nxt_st <= s1;
                     dout <= 0;
                 end
                      
        endcase
    end
    
endmodule
