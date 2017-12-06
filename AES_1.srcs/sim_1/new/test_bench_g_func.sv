`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 04:45:13 PM
// Design Name: 
// Module Name: test_bench_g_func
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


module test_bench_g_func(

    );
    logic  [31:0] in_t1;
    logic  [3:0] round_t;
    wire   [31:0] out_t1;
    
    g_func gf0(in_t1, round_t, out_t1);
    
    initial begin
         round_t <= 4'b0000;
         in_t1 <= 'h01020304;
         #1;
    end
endmodule
