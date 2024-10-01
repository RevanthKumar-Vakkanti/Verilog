`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 11:46:11
// Design Name: 
// Module Name: jk_ff
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


/*module jk_ff(clk,reset,j,k,q,qbar);
input clk,reset,j,k;
output reg q;
output  qbar;
always @(posedge clk) begin 
 if(!reset) q <= 0;
 else begin
 case({j,k})
 2'b00: q <= q;   
 2'b01: q <= 0; 
 2'b10: q <= 1; 
 2'b11: q <= ~q;   
 endcase
 end
 end
 assign qbar = ~q;

endmodule */


module jk_ff(clk,j,k,q,qb);
    input clk,j,k;
    output reg q;
    output  qb;
        always @(posedge clk) 
        begin 
            case({j,k})
                 2'b00: q <= q;   
                 2'b01: q <= 0; 
                 2'b10: q <= 1; 
                 2'b11: q <= ~q;   
            endcase
        end
            assign qb = ~q;
endmodule








/*module jk_ff(

      input j,
      input k,
      input clk,
      output reg q,
      output reg qb
    );
    
      always @(posedge clk) begin
          if (j == 0 && k == 0) 
            begin
              q <= q;
              qb <= ~qb;
            end
            else if (j == 0 && k == 1) 
            begin
              q <= 0;
              qb <= 1;
            end
            else if (j == 1 && k == 0) 
            begin
              q <= 1;
              qb <= 0;
            end
            else if (j == 1 && k == 1) 
            begin
              q <= ~q;
              qb <= qb;
            end
      end

endmodule */
