`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 12:17:56 PM
// Design Name: 
// Module Name: test_bench_sub_bytes
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


module test_bench_sub_bytes();
    logic  [127:0] in_t;
    wire   [127:0] out_t;
    
    sub_bytes sub_bytes0(in_t, out_t);
    
    initial begin
        in_t <= 'h00000000000000000000000000000000;
        #1;
        in_t <= 'h000000000000000000000000000000FF;
        #1;
        in_t <= 'h01000000000000000000000000000000;
        #1;
    end
endmodule
