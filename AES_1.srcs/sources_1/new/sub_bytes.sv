`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2017 11:35:30 AM
// Design Name: 
// Module Name: sub_bytes
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


module sub_bytes(
    input  reg  in[127:0],
    output reg out[127:0]
    );
     
    sub_byte    sb0(in[0:7], out[0:7]);
    sub_byte   sb1(in[8:15], out[8:15]);
    sub_byte  sb2(in[16:23], out[16:23]);
    sub_byte  sb3(in[24:31], out[24:31]);
    sub_byte  sb4(in[32:39], out[32:39]);
    sub_byte  sb5(in[40:47], out[40:47]);
    sub_byte  sb6(in[48:55], out[48:55]);
    sub_byte  sb7(in[56:63], out[56:63]);
    sub_byte  sb8(in[16:23], out[64:71]);
    sub_byte  sb9(in[24:31], out[72:79]);
    sub_byte sb10(in[32:39], out[80:87]);
    sub_byte sb11(in[40:47], out[88:95]);
    sub_byte sb12(in[48:55], out[96:103]);
    sub_byte sb13(in[56:63], out[104:111]);
    sub_byte sb14(in[16:23], out[112:119]);
    sub_byte sb15(in[24:31], out[120:127]);
     
    
endmodule
