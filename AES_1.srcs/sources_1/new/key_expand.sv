`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 06:59:52 PM
// Design Name: 
// Module Name: key_expand
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


module key_expand(
    input  [ 127:0] key,
    output [1407:0] out
    );
    
    assign out[1407:1280] = key;
    
    wire [127:0] out0;
    key_expand_stage kes0(key, 'h0, out0);
    assign out[1279:1152] = out0;
    
    wire [127:0] out1;
    key_expand_stage kes1(out0, 'h1, out1);
    assign out[1151:1024] = out1;
        
    wire [127:0] out2;
    key_expand_stage kes2(out1, 'h2, out2);
    assign out[1023:896] = out2;
    
    wire [127:0] out3;
    key_expand_stage kes3(out2, 'h3, out3);
    assign out[895:768] = out3;
    
    //----------------//
    wire [127:0] out4;
    key_expand_stage kes4(out3, 'h4, out4);
    assign out[767:640] = out4;
    
    wire [127:0] out5;
    key_expand_stage kes5(out4, 'h5, out5);
    assign out[639:512] = out5;
        
    wire [127:0] out6;
    key_expand_stage kes6(out5, 'h6, out6);
    assign out[511:384] = out6;
    
    wire [127:0] out7;
    key_expand_stage kes7(out6, 'h7, out7);
    assign out[383:256] = out7;    
    
    wire [127:0] out8;
    key_expand_stage kes8(out7, 'h8, out8);
    assign out[255:128] = out8;   

    wire [127:0] out9;
    key_expand_stage kes9(out8, 'h9, out9);
    assign out[127:0] = out9;       
    
endmodule
