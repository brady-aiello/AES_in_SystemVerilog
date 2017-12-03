`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 11:18:49 AM
// Design Name: 
// Module Name: test_bench_sub_byte
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


module test_bench_sub_byte();
    logic [7:0] in_t ;
    wire  [7:0] out_t;
    
    sub_byte sub_byte0(in_t, out_t);
    initial begin
        in_t <= 'b00000000;
        #1;
        in_t <= 'b11111111;
        #1;
    end
    
endmodule
