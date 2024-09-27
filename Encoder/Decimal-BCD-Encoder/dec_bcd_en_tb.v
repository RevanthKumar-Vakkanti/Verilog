`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 20:29:58
// Design Name: 
// Module Name: dec_bcd_en_tb
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


module dec_bcd_en_tb();

reg [9:0]y;
wire [3:0]a;

dec_bcd_en db(y,a);

initial begin

#10 y = 10'b0000000001;
#10 y = 10'b0000000010;
#10 y = 10'b0000000100;
#10 y = 10'b0000001000;
#10 y = 10'b0000010000;
#10 y = 10'b0000100000;
#10 y = 10'b0001000000;
#10 y = 10'b0010000000;
#10 y = 10'b0100000000;
#10 y = 10'b1000000000;

#20 $finish;
end

endmodule
