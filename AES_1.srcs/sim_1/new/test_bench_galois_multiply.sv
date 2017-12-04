`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2017 11:57:50 AM
// Design Name: 
// Module Name: test_bench_galois_multiply
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


module test_bench_galois_multiply( );
    logic [7:0]in_a ;
    logic [7:0]in_b;
    wire [14:0] temp_out_t;
    wire [7:0] out_t;
    
    galois_multiply gmult(in_a, in_b, temp_out_t);
    galois_mod       gmod(temp_out_t, out_t);
    
    initial begin
    in_a <= 8'h6B;
    in_b <= 8'h2D;
    //in_a <= 'h36;
    //in_b <= 'h93;

//        in_a <= 8'h52;
//        in_b <= 8'hCA;
        //in_b <= 8'h5C;
        #1;
    end
endmodule
