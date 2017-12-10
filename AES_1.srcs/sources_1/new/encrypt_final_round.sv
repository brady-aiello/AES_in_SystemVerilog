`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 11:06:56 PM
// Design Name: 
// Module Name: encrypt_final_round
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


module encrypt_final_round(
    input [127:0] in,
    input [127:0] round_key,
    output [127:0] out
    );
    
    wire [127:0] from_sub_b;
    sub_bytes sb(in, from_sub_b);
    
    wire [127:0] from_shift;
    shift_rows sr(from_sub_b, from_shift);
    
    assign out = from_shift ^ round_key;

endmodule
