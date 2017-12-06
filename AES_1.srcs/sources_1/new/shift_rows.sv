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
    assign out[127:120] = in[127:120];
    assign out[95:88] = in[95:88];
    assign out[63:56] = in[63:56];
    assign out[31:24] = in[31:24];
    
    //2nd row circular left shift 1
    assign out[119:112] = in[87:80];
    assign out[87:80] = in[55:48];
    assign out[55:48] = in[23:16];
    assign out[23:16] = in[119:112];
    
    //3rd row circular left shift 2
    assign out[111:104] = in[47:40];
    assign out[79:72] = in[15:8];
    assign out[47:40] = in[111:104];
    assign out[15:8] = in[79:72];
    
    //4th row circular left shift 3
    assign out[103:96] = in[7:0];
    assign out[71:64] = in[103:96];
    assign out[39:32] = in[71:64];
    assign out[7:0] = in[39:32];
      
endmodule
