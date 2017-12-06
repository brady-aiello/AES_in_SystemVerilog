`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 06:20:05 PM
// Design Name: 
// Module Name: test_bench_key_expand_stage
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


module test_bench_key_expand_stage();
    logic [127:0] in_t;
    logic [3:0] round_t;
    wire [127:0] out_t;

    key_expand_stage kes(in_t, round_t, out_t);
    initial begin
        in_t <= 128'h0;
        round_t <= 'b1;
        #10;
//        round_t <= 'b1;
//        #1;
//        round_t <= 'b11;
//        #1;
//        round_t <= 'b111;
//        #1;
//        round_t <= 'b1001;
    end
endmodule
