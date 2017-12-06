`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 10:47:37 PM
// Design Name: 
// Module Name: test_bench_encrypt
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


module test_bench_encrypt();
    logic [127:0] message_t;
    logic [127:0] key_t;
    wire [127:0] cipher_text;

    encrypt e(message_t, key_t, cipher_text);
    initial begin
        key_t <= 'h0123456789ABCDEF0123456789ABCDEF;
        message_t <= 'h00;
        #1;
        
    end
endmodule
