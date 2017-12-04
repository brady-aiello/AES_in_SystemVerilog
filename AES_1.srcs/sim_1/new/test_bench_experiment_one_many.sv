`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 08:35:11 PM
// Design Name: 
// Module Name: test_bench_experiment_one_many
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


module test_bench_experiment_one_many();
       logic  [15:0] in_t1;
       wire   [15:0] out_t1;
 
 experiment_one_many experiment(in_t1, out_t1);
 
 initial begin
      in_t1 <= 'h00;
      #1;
      in_t1 <= 'hFF;
      #1;
 end
endmodule
