`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2017 06:57:27 PM
// Design Name: 
// Module Name: shift_rows
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


module shift_rows(
    input  reg [127:0]in,
    output reg [127:0]out 
    );
    
    //top row stays the same
    assign out[127:96] = in[127:96];
    
    //2nd row circular left shift 1
    assign out[95:72] = in[87:64];
    assign out[71:64] = in[95:88];
    
    //3rd row circular left shift 2
    assign out[63:48] = in[47:32];
    assign out[47:32] = in[63:48];
    
    //4th row circular left shift 3
    assign out[31:24] = in[7:0];
    assign out[23:0] = in[31:24];
endmodule
