`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 08:10:50 PM
// Design Name: 
// Module Name: galois_mod
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


module galois_mod(
    input [14:0] in,
    output logic [7:0] out
    );
    
    reg [8:0] modulo = 'h11B;
    wire [14:0]mod0;
    wire [14:0]mod1;
    wire [14:0]mod2;
    wire [14:0]mod3;
    wire [14:0]mod4;
    wire [14:0]mod5;
    wire [14:0]mod6;
    
    logic[14:0] step0;
    logic[14:0] step1;
    logic[14:0] step2;
    logic[14:0] step3;
    logic[14:0] step4;
    logic[14:0] step5;
    //logic[14:0] step6;
    
    and_one_to_fifteen and0({modulo,6'b0},      in[14], mod0);
    assign step0 = in ^ mod0;
    
    and_one_to_fifteen and1({1'b0,modulo,5'b0}, step0[13], mod1); 
    assign step1 = step0 ^ mod1;
    
    and_one_to_fifteen and2({2'b0,modulo,4'b0}, step1[12], mod2);
    assign step2 = step1 ^ mod2;
    
    and_one_to_fifteen and3({3'b0,modulo,3'b0}, step2[11], mod3);
    assign step3 = step2 ^ mod3;
    
    and_one_to_fifteen and4({4'b0,modulo,2'b0}, step3[10], mod4);
    assign step4 = step3 ^ mod4;
    
    and_one_to_fifteen and5({5'b0,modulo,1'b0},  step4[9], mod5);
    assign step5 = step4 ^ mod5;
    
    and_one_to_fifteen and6({6'b0,modulo},       step5[8], mod6);
    assign out = step5[7:0] ^ mod6[7:0];
    //wire [14:0] answer = mod1;
    //assign out = step2[14:0];
    //assign out = answer;
       
endmodule
