`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 09:57:13
// Design Name: 
// Module Name: sr_ff
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

// without using reset

/*module sr_ff(
    input s,r,
    input clk,
    output reg q
    );
    
    always @(posedge clk)
        begin
            case({s,r})
                2'b00: q <= q;
                2'b01: q <= 0;
                2'b10: q <= 1;
                2'b11: q <= 1'bx;
            endcase
    end
endmodule */


// using reset

module sr_ff(
    input s,r,
    input clk,reset,
    output reg q
    );
    
    always @(posedge reset)
        if(reset)
         begin
            q=0;
         end
         else 
           begin
            case({s,r})
                2'b00: q <= q;
                2'b01: q <= 0;
                2'b10: q <= 1;
                2'b11: q <= 1'bx;
            endcase
    end
endmodule




/*module sr_ff(
    input s,r,
    input clk,
    output reg q,qb
    );
    
    always @(posedge clk)
        begin
            q=1'b0; qb=1'b1;
            
            if(clk==1) 
                begin
                    if(s==0 && r==0) 
                        begin
                            q=q; qb=qb; 
                        end
                        else if(s==0 && r==1) 
                        begin
                            q=1'b0; qb=1'b1; 
                        end
                        else if(s==1 && r==0) 
                        begin
                            q=1'b1; qb=1'b0; 
                        end
                        else if(s==1 && r==1) 
                        begin
                            q=1'bx; qb=1'bx; 
                        end
                end
                if(clk==0) 
                begin
                    q=q; qb=qb; 
                end
        end
 endmodule */


