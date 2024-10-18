`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 10:50:09
// Design Name: 
// Module Name: moore_1010
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


module moore_1010(
    input din,clk,rst,
    output reg dout
    );
    
    reg [2:0] cur_st, nxt_st;
    
    parameter s0 = 3'b000;
    parameter s1 = 3'b001;
    parameter s2 = 3'b010;
    parameter s3 = 3'b011;
    parameter s4 = 3'b100;
    
    always @(posedge clk)
    begin
        if(rst)
            cur_st <=s0;
        else
            cur_st <= nxt_st;
    end
    
    always @(*)
    begin
        case(cur_st)
             s0: if (din == 1'b1) 
                begin
                    nxt_st <= s1;
                    dout <= 1'b0;
                end
                else 
                begin
                    nxt_st <= cur_st;
                    dout <= 1'b0;
                end
                
             s1: if (din == 1'b0) 
                   begin
                       nxt_st <= s2;
                       dout <= 1'b0;
                   end
                   else 
                   begin
                       nxt_st <= cur_st;
                       dout <= 1'b0;
                   end
                   
             s2: if (din == 1'b1) 
                      begin
                          nxt_st <= s3;
                          dout <= 1'b0;
                      end
                      else 
                      begin
                          nxt_st <= s0;
                          dout <= 1'b0;
                      end             

             s3: if (din == 1'b0) 
                begin
                    nxt_st <= s4;
                    dout <= 1'b0;
                end
                else 
                begin
                    nxt_st <= s1;
                    dout <= 1'b0;
                end  
 
    /*          s4: if (din == 1'b1) //overlapping
                   begin
                       nxt_st <= s3;
                       dout <= 1'b1;
                   end
                   else 
                   begin
                       nxt_st <= s0;
                       dout <= 1'b1;
                   end */
                   
              s4: if (din == 1'b1) //non-overlapping
                        begin
                            nxt_st <= s1;
                            dout <= 1'b1;
                        end
                        else 
                        begin
                            nxt_st <= s0;
                            dout <= 1'b1;
                        end                              
        endcase
    end    
                
endmodule
