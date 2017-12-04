`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2017 03:11:12 PM
// Design Name: 
// Module Name: galois_multiply
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


module galois_multiply(
    input  [7:0]a ,
    input  [7:0]b,
    output logic  [14:0]out 
    );
    //reg temp = b[0] & a[0];
    
    wire [7:0]row0 = {b[0] & a[7], b[0] & a[6], b[0] & a[5], b[0] & a[4], b[0] & a[3], b[0] & a[2], b[0] & a[1], b[0] & a[0]};
    wire [7:0]row1 = {b[1] & a[7], b[1] & a[6], b[1] & a[5], b[1] & a[4], b[1] & a[3], b[1] & a[2], b[1] & a[1], b[1] & a[0]};
    wire [7:0]row2 = {b[2] & a[7], b[2] & a[6], b[2] & a[5], b[2] & a[4], b[2] & a[3], b[2] & a[2], b[2] & a[1], b[2] & a[0]};
    wire [7:0]row3 = {b[3] & a[7], b[3] & a[6], b[3] & a[5], b[3] & a[4], b[3] & a[3], b[3] & a[2], b[3] & a[1], b[3] & a[0]};
    wire [7:0]row4 = {b[4] & a[7], b[4] & a[6], b[4] & a[5], b[4] & a[4], b[4] & a[3], b[4] & a[2], b[4] & a[1], b[4] & a[0]};
    wire [7:0]row5 = {b[5] & a[7], b[5] & a[6], b[5] & a[5], b[5] & a[4], b[5] & a[3], b[5] & a[2], b[5] & a[1], b[5] & a[0]};
    wire [7:0]row6 = {b[6] & a[7], b[6] & a[6], b[6] & a[5], b[6] & a[4], b[6] & a[3], b[6] & a[2], b[6] & a[1], b[6] & a[0]};
    wire [7:0]row7 = {b[7] & a[7], b[7] & a[6], b[7] & a[5], b[7] & a[4], b[7] & a[3], b[7] & a[2], b[7] & a[1], b[7] & a[0]};

    wire [14:0] p;
    assign p[0]  = row0[0];
    assign p[1]  = row0[1] ^ row1[0];
    assign p[2]  = row0[2] ^ row1[1] ^ row2[0];
    assign p[3]  = row0[3] ^ row1[2] ^ row2[1] ^ row3[0];
    assign p[4]  = row0[4] ^ row1[3] ^ row2[2] ^ row3[1] ^ row4[0];
    assign p[5]  = row0[5] ^ row1[4] ^ row2[3] ^ row3[2] ^ row4[1] ^ row5[0]; 
    assign p[6]  = row0[6] ^ row1[5] ^ row2[4] ^ row3[3] ^ row4[2] ^ row5[1] ^ row6[0];
    assign p[7]  = row0[7] ^ row1[6] ^ row2[5] ^ row3[4] ^ row4[3] ^ row5[2] ^ row6[1] ^ row7[0]; 
    
    assign p[8]  = row1[7] ^ row2[6] ^ row3[5] ^ row4[4] ^ row5[3] ^ row6[2] ^ row7[1]; 
    assign p[9]  = row2[7] ^ row3[6] ^ row4[5] ^ row5[4] ^ row6[3] ^ row7[2];
    assign p[10] = row3[7] ^ row4[6] ^ row5[5] ^ row6[4] ^ row7[3];
    assign p[11] = row4[7] ^ row5[6] ^ row6[5] ^ row7[4];
    assign p[12] = row5[7] ^ row6[6] ^ row7[5]; 
    assign p[13] = row6[7] ^ row7[6]; 
    assign p[14] = row7[7];
     
    assign out = p;
    //integer answer;
    //assign answer = p % 'b100011011; 
     
//    always begin
//        p[0]  <= row0[0];
//        p[1]  <= row0[1] ^ row1[0];
//        p[2]  <= row0[2] ^ row1[1] ^ row2[0];
//        p[3]  <= row0[3] ^ row1[2] ^ row2[1] ^ row3[0];
//        p[4]  <= row0[4] ^ row1[3] ^ row2[2] ^ row3[1] ^ row4[0];
//        p[5]  <= row0[5] ^ row1[4] ^ row2[3] ^ row3[2] ^ row4[1] ^ row5[0]; 
//        p[6]  <= row0[6] ^ row1[5] ^ row2[4] ^ row3[3] ^ row4[2] ^ row5[1] ^ row6[0];
//        p[7]  <= row0[7] ^ row1[6] ^ row2[5] ^ row3[4] ^ row4[3] ^ row5[2] ^ row6[1] ^ row7[0]; 
//        p[8]  <= row1[7] ^ row2[6] ^ row3[5] ^ row4[4] ^ row5[3] ^ row6[2] ^ row7[1]; 
//        p[9]  <= row2[7] ^ row3[6] ^ row4[5] ^ row5[4] ^ row6[3] ^ row7[2];
//        p[10] <= row3[7] ^ row4[6] ^ row5[5] ^ row6[4] ^ row7[3];
//        p[11] <= row4[7] ^ row2[6] ^ row3[5] ^ row4[4];
//        p[12] <= row5[7] ^ row2[6] ^ row3[5]; 
//        p[13] <= row6[7] ^ row7[6]; 
//        p[14] <= row7[7];
//        p[15] <= 0;
//    end
endmodule
