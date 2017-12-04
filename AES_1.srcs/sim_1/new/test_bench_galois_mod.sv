`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 09:21:18 PM
// Design Name: 
// Module Name: test_bench_galois_mod
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


module test_bench_galois_mod();
    logic [14:0]in_t;
    logic [7:0] out_t;
    
    //galois_mod gm(in_t,out_0,out_1,out_2,out_3,out_4,out_5,out_6);
    
    galois_mod gm(in_t,out_t);
    initial begin
        in_t <= 15'b011111101111110;
        #1;
        in_t <= 15'b011111101111111;
        #1;
        
    end
endmodule
