`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 12:34:49
// Design Name: 
// Module Name: up_counter
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

    
    
/*module up_counter(
    input clk,
    input[3:0]a,
    input rst,
    output reg [3:0]upout
    );
 //   initial upout=4'b0000;
 //   always@(negedge clk) 
 //   upout=(upout==a)?4'b0000:upout+1'b1;
    
    always @(posedge clk)
    begin
        if(rst)
            upout<=0;
        else
            upout<=upout+1;
    end
endmodule */



/*module down_counter(
    input clk,
    input[3:0]a,
    input rst,
    output reg [3:0]upout
    );
 //   initial upout=4'b0000;
 //   always@(negedge clk) 
 //   upout=(upout==a)?4'b1111:upout-1'b1;
    
    always @(posedge clk)
    begin
        if(rst)
            upout<=4'b1111;
        else
            upout<=upout-1;
    end
endmodule*/



module up_down_counter(
    input clk,
  //  input[3:0]a,
    input rst,up_down,
    output reg [3:0]out
    );
    
    always @(posedge clk)
    begin
        if(rst)
            out<=4'b0000;
        else if(up_down==1)
            out<=out+1;
        else
        begin
            out<=out-1;
        end
    end
endmodule
