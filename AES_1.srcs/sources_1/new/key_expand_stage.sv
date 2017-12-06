`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 05:59:58 PM
// Design Name: 
// Module Name: key_expand_stage
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


module key_expand_stage(
    input  [127:0] in,
    input  [  3:0] round,
    output [127:0] out
    );
    
    wire [31:0]xor_arg;
    g_func gf0(in[31:0], round, xor_arg);
    
    wire [31:0]out0 = xor_arg ^ in[127:96];
    //assign out[127:96] = xor_arg ^ in[127:96];
    
    wire [31:0]out1 = out0 ^ in[95:64];
    //assign out[ 95:64] = xor_arg ^ in[127:96] ^ in[ 95:64];
    
    wire [31:0]out2 = out1 ^ in[63:32];
    //assign out[ 63:32] = xor_arg ^ in[127:96] ^ in[ 95:64] ^ in[63:32];
    
    wire [31:0]out3 = out2 ^ in[31:0];
    assign out = {out0, out1, out2, out3}; 
        
endmodule
