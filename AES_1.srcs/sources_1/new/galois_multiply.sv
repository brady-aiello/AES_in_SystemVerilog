`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2017 03:11:12 PM
// Design Name: 
// Module Name: galois_multiply
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


module galois_multiply(
    input  [7:0]a ,
    input  [7:0]b,
    output logic  [7:0]out 
    );
    //reg temp = b[0] & a[0];
   
   wire [14:0] temp0;
   galois_mult_expand gme(a, b, temp0);
   galois_mod gm(temp0, out);
   
endmodule
