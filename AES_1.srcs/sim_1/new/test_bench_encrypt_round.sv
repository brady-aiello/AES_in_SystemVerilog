`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 10:03:29 PM
// Design Name: 
// Module Name: test_bench_encrypt_round
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


module test_bench_encrypt_round();
    logic [127:0] message;
    logic [127:0] round_key;
    wire  [127:0] out_t;
     
    encrypt_round er(message, round_key, out_t);
    
    initial begin
        message <=   'h0102030405060708090A0B0C0C0D0E0F;
        round_key <= 'b0;
        #5;
    end
   
endmodule
