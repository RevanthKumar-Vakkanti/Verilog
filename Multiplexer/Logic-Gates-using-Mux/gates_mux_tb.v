`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 16:52:17
// Design Name: 
// Module Name: gates_mux_tb
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


module gates_mux_tb(

    );
    
    reg s,b;
    wire ya,yo,yn,yna,yno,yxo,yxn;
    
    gates_mux lg(s,b,ya,yo,yn,yna,yno,yxo,yxn);
    
    initial begin
  
   #10 s = 0; b = 0;
   #10 s = 0; b = 1;
   #10 s = 1; b = 0;
   #10 s = 1; b = 1;
   
   #10 $stop;
   end
endmodule
