`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 04:30:57 PM
// Design Name: 
// Module Name: g_func
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


module g_func(
    input [31:0] in,
    input  [3:0] round,
    output [31:0] out
    );
    
    wire [31:0]shifted = {in[23:0],in[31:24]};
    wire [7:0]subbed;
    
    sub_byte sb0(shifted[31:24], subbed);
    sub_byte sb1(shifted[23:16], out[23:16]);
    sub_byte sb2(shifted[15: 8], out[15: 8]);
    sub_byte sb3(shifted[ 7: 0], out[ 7: 0]);
    
    logic [7:0]round_constant[0:9] = {'h01,'h02,'h04,'h08,'h10,'h20,'h40,'h80,'h1b,'h36};
    assign out[31:24] = round_constant[round] ^ subbed;
    
    endmodule
