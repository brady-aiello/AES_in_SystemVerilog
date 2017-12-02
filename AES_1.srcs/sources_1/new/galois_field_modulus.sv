`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2017 06:02:24 PM
// Design Name: 
// Module Name: galois_field_modulus
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


module galois_field_modulus(
    input   reg [15:0] in,
    output  reg [7:0] out
    );
    integer answer = in % 'b100011011; 
    assign out = answer[7:0];

endmodule
