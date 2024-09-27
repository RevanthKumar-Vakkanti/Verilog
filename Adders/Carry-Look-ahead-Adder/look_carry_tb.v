`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 11:23:56
// Design Name: 
// Module Name: look_carry_tb
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


/*module look_carry_tb();
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;
look_carry clh(a,b,cin,s,cout);
initial begin
a=4'b0011; b=4'b1000; cin = 0;
#10 a=4'b1000; b=4'b0101;
#10 a=4'b1011; b=4'b1110;
#10 a=4'b1010; b=4'b0111;

#100 $finish;

end
endmodule */



module l_ca_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
l_ahead gg(a,b,cin,sum,cout);
initial begin
cin =0;
#10 
a= 4'b0001;
b= 4'b1010;
#10
a= 4'b1110;
b= 4'b1011;
end
endmodule
