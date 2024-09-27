`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 15:50:33
// Design Name: 
// Module Name: gates_mux
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


module gates_mux(
    input s,b,
    output ya,yo,yn,yna,yno,yxo,yxn
    );
    
    assign ya  = s ?    b :    0;
    assign yo  = s ?    1 :    b;
    assign yn  = s ?    1 :    0;
    assign yna = s ? (~b) :    1;
    assign yno = s ?    0 : (~b);
    assign yxo = s ? (~b) :    b;
    assign yxn = s ?    b : (~b);
    
endmodule
