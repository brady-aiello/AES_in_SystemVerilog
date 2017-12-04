`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 09:35:21 PM
// Design Name: 
// Module Name: test_bench_and_one_to_fifteen
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


module test_bench_and_one_to_fifteen();
    logic [14:0]in_t;
    logic mbit;
    wire  [14:0]out_t;
    reg [8:0] modulo = 'h11B;
   
     wire [14:0]mod0;
//    wire [14:0]mod1;
//    wire [14:0]mod2;
//    wire [14:0]mod3;
//    wire [14:0]mod4;
//    wire [14:0]mod5;
//    wire [14:0]mod6;
   
    //and_one_to_fifteen and_one_fif(in_t, mbit, out_t);
   reg [14:0] my_input;
   
    and_one_to_fifteen and0(my_input,      mbit, mod0);
//    and_one_to_fifteen and1({1'b0,modulo,5'b0}, mod0[13], mod1); 
//    and_one_to_fifteen and2({2'b0,modulo,4'b0}, mod1[12], mod2);
//    and_one_to_fifteen and3({3'b0,modulo,3'b0}, mod2[11], mod3);
//    and_one_to_fifteen and4({4'b0,modulo,2'b0}, mod3[10], mod4);
//    and_one_to_fifteen and5({5'b0,modulo,1'b0},  mod4[9], mod5);
       
     //and_one_to_fifteen and6({6'b0,modulo},       mod5[8], mod6);
     
 
 initial begin
     in_t <= 15'b011111101111110;
     my_input <= {modulo,6'b0};
     mbit <= 1'b0;
     #1;
     in_t <= 15'b011111101111110;
     my_input <= {modulo,6'b0};
     mbit <= 1'b1;
     #1;
 end
endmodule
