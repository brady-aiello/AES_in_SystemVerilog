`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 07:16:55 PM
// Design Name: 
// Module Name: test_bench_key_expand
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


module test_bench_key_expand();
    logic [127:0] key_t;
    wire [1407:0] out_t;
    
    key_expand ke(key_t, out_t);
    initial begin
        key_t <= 128'h0;
        #10;
        //key_t <= 'h00112233445566778899AABBCCDDEEFF;
    end
    
endmodule
