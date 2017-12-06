`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 01:03:20 PM
// Design Name: 
// Module Name: test_bench_shift_rows
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


module test_bench_shift_rows();
    logic  [127:0] in_t1;
    wire   [127:0] out_t1;
     
    shift_rows shift_rows0(in_t1, out_t1);
    
    initial begin
         //in_t1 <= 'h01020304010203040102030401020304;
         in_t1 <=   'h000102030405060708090A0B0C0D0E0F;
         #1;
//         in_t1 <= 'h00010203000102030001020300010203;
//         #1;
    end
endmodule
