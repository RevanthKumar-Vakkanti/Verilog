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

    
//up counter    
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


//down counter
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


//up-down counter
/*module up_down_counter(
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
endmodule*/


//taking two output variables 
/*module up_down_counter(
    input clk,
    input rst,up_down,
    output reg [3:0]out,
    output reg [3:0]q
    );
    
    always @(posedge clk)
    begin
        if(rst)
        begin
            out<=4'b0000;
            q<=4'b0000;
        end
        else
        begin
             if(up_down==1)
                  out<=out+1;  // up-counter
        else
        
            q<=q-1;  //down-counter
        end
    end
    
endmodule*/


//USING PARAMETER and two variables 
module up_down_counter  #(parameter N=5)(
    input clk,
    input rst,up_down,
    output reg [N-1:0]out,
    output reg [N-1:0]q
    );
    integer i;
    always @(posedge clk)
    begin
        if(rst)
        begin
            out<=4'b0000;
            q<=4'b0000;
        end
        else
        begin
             if(up_down==1)
                  out<=out+1;
        else
        
            q<=q-1;
        end
    end
    
endmodule
