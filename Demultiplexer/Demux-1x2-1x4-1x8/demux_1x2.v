`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 09:30:08
// Design Name: 
// Module Name: demux_1x2
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


module demux_1x2(
    input i,
    input s,
    output reg[1:0]y
    );
    
   // assign y[0] = ((~s) & i);
   // assign y[1] = (s & i); 
    
     always @(*)
        begin
        case(s)
        1'b0:{y[0],y[1]} = {i,1'b0};
        1'b1:{y[0],y[1]} = {1'b0,i};
        endcase
        end
    
endmodule


/*module demux_1x4(
    input i,
    input [1:0]s,
    output reg[3:0]y
    );
    
  //  assign y[0] = ((~s[0]) & (~s[1]) & i);
  //  assign y[1] = ((~s[0]) & (s[1]) & i);
  //  assign y[2] = ((s[0]) & (~s[1]) & i);
  //  assign y[3] = ((s[0]) & (s[1]) & i);  
     
     always @(*)
     begin
     case({s[0],s[1]})
     2'b00:{y[0],y[1],y[2],y[3]} = {i,3'b0};
     2'b01:{y[0],y[1],y[2],y[3]} = {1'b0,i,2'b0};
     2'b10:{y[0],y[1],y[2],y[3]} = {2'b0,i,1'b0};
     2'b11:{y[0],y[1],y[2],y[3]} = {3'b0,i};
     endcase
     end
endmodule */


/*module demux_1x8(
    input i,
    input [2:0]s,
    output reg[7:0]y
    );
    
        always @(*)
    begin
    case({s[0],s[1],s[2]})
    3'b000:{y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]} = {i,7'b0};
    3'b001:{y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]} = {1'b0,i,6'b0};
    3'b010:{y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]} = {2'b0,i,5'b0};
    3'b011:{y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]} = {3'b0,i,4'b0};
    3'b100:{y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]} = {4'b0,i,3'b0};
    3'b101:{y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]} = {5'b0,i,2'b0};
    3'b110:{y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]} = {6'b0,i,1'b0};    
    3'b111:{y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]} = {7'b0,i};
    endcase
    end 
    
    
endmodule */