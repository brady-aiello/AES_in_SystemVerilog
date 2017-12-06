`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2017 10:22:50 PM
// Design Name: 
// Module Name: encrypt
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


module encrypt(
    input [127:0] message,
    input [127:0] key,
    output [127:0] cipher_text
    );
    
    wire [1407:0] key_schedule;
    key_expand ke(key, key_schedule);
    
    wire [127:0] from_round_0 = message ^ key; 
    //wire [127:0] from_round_1;
    
    //encrypt_round er1(from_round_0, key_schedule[1407:1280], from_round_1);
    
    wire [127:0] from_round_1;
    encrypt_round er1(from_round_0, key_schedule[1279:1152], from_round_1);

    wire [127:0] from_round_2;
    encrypt_round er2(from_round_1, key_schedule[1151:1024], from_round_2);
    
    wire [127:0] from_round_3;
    encrypt_round er3(from_round_2, key_schedule[1023:896], from_round_3);
    
    wire [127:0] from_round_4;
    encrypt_round er4(from_round_3, key_schedule[895:768], from_round_4);
    
    wire [127:0] from_round_5;
    encrypt_round er5(from_round_4, key_schedule[767:640], from_round_5);
        
    wire [127:0] from_round_6;
    encrypt_round er6(from_round_5, key_schedule[639:512], from_round_6);

    wire [127:0] from_round_7;
    encrypt_round er7(from_round_6, key_schedule[511:384], from_round_7);
    
    wire [127:0] from_round_8;
    encrypt_round er8(from_round_7, key_schedule[383:256], from_round_8);
    
    wire [127:0] from_round_9;
    encrypt_round er9(from_round_8, key_schedule[255:128], from_round_9);

    wire [127:0] from_round_10;
    encrypt_final_round er10(from_round_9, key_schedule[127:0], from_round_10);         
    
    assign cipher_text = from_round_10;
endmodule
