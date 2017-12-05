`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 03:36:15 PM
// Design Name: 
// Module Name: test_bench_mix_columns
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


module test_bench_mix_columns();
    logic  [127:0] in_t1;
    wire   [127:0] out_t1;
    
    mix_columns mix_col_0(in_t1, out_t1);
    
    initial begin
         in_t1 <= 'h01020304010203040102030401020304;
         #1;
//         in_t1 <= 'h00010203000102030001020300010203;
//         #1;
    end
endmodule
