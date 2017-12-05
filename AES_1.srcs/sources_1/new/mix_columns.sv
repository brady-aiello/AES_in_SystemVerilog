`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2017 08:27:21 PM
// Design Name: 
// Module Name: mix_columns
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


module mix_columns(
    input  [127:0]in,
    output [127:0]out
    );
    
    wire [7:0]answer00_2;
    wire [7:0]answer00_3;
    wire [7:0]answer01_2;
    wire [7:0]answer01_3;
    wire [7:0]answer02_2;
    wire [7:0]answer02_3;
    wire [7:0]answer03_2;
    wire [7:0]answer03_3;
              
    wire [7:0]answer10_2;
    wire [7:0]answer10_3;
    wire [7:0]answer11_2;
    wire [7:0]answer11_3;
    wire [7:0]answer12_2;
    wire [7:0]answer12_3;
    wire [7:0]answer13_2;
    wire [7:0]answer13_3;    
              
    wire [7:0]answer20_2;
    wire [7:0]answer20_3;
    wire [7:0]answer21_2;
    wire [7:0]answer21_3;
    wire [7:0]answer22_2;
    wire [7:0]answer22_3;
    wire [7:0]answer23_2;
    wire [7:0]answer23_3;   
              
    wire [7:0]answer30_2;
    wire [7:0]answer30_3;
    wire [7:0]answer31_2;
    wire [7:0]answer31_3;
    wire [7:0]answer32_2;
    wire [7:0]answer32_3;
    wire [7:0]answer33_2;
    wire [7:0]answer33_3;   
    
    //cell (0, 0)
    galois_multiply gm002('h02, in[127:120], answer00_2);
    galois_multiply gm003('h03, in[119:112], answer00_3);
    
    //cell (0, 1)
    galois_multiply gm012('h02, in[95:88], answer01_2);
    galois_multiply gm013('h03, in[87:80], answer01_3);
    
    //cell (0, 2)
    galois_multiply gm022('h02, in[63:56], answer02_2);
    galois_multiply gm023('h03, in[55:48], answer02_3);
    
    //cell (0, 3)
    galois_multiply gm032('h02, in[31:24], answer03_2);
    galois_multiply gm033('h03, in[23:16], answer03_3);
    
    //*---------2nd row---------*/
    
    //cell (1, 0)
    galois_multiply gm102('h02, in[119:112], answer10_2);
    galois_multiply gm103('h03, in[111:104], answer10_3);
    
    //cell (1, 1)
    galois_multiply gm112('h02, in[87:80], answer11_2);
    galois_multiply gm113('h03, in[79:72], answer11_3);
    
    //cell (1, 2)
    galois_multiply gm122('h02, in[55:48], answer12_2);
    galois_multiply gm123('h03, in[47:40], answer12_3);
    
    //cell (1, 3)
    galois_multiply gm132('h02, in[23:16], answer13_2);
    galois_multiply gm133('h03, in[15: 8], answer13_3);
    
    //*---------3rd row---------*/
        
    //cell (2, 0)
    galois_multiply gm202('h02, in[111:104], answer20_2);
    galois_multiply gm203('h03, in[103:96], answer20_3);
    
    //cell (2, 1)
    galois_multiply gm212('h02, in[79:72], answer21_2);
    galois_multiply gm213('h03, in[71:64], answer21_3);
    
    //cell (2, 2)
    galois_multiply gm222('h02, in[47:40], answer22_2);
    galois_multiply gm223('h03, in[39:32], answer22_3);
    
    //cell (2, 3)
    galois_multiply gm232('h02, in[15: 8], answer23_2);
    galois_multiply gm233('h03, in[ 7: 0], answer23_3);

    //*---------4th row---------*/
        
    //cell (3, 0)
    galois_multiply gm302('h02, in[103:96], answer30_2);
    galois_multiply gm303('h03, in[127:120], answer30_3);
    
    //cell (3, 1)
    galois_multiply gm312('h02, in[71:64], answer31_2);
    galois_multiply gm313('h03, in[95:88], answer31_3);
    
    //cell (3, 2)
    galois_multiply gm322('h02, in[39:32], answer32_2);
    galois_multiply gm323('h03, in[63:56], answer32_3);
    
    //cell (3, 3)
    galois_multiply gm332('h02, in[ 7: 0], answer33_2);
    galois_multiply gm333('h03, in[31:24], answer33_3);
    
    // row 0
    assign out[127:120] = answer00_2 ^ answer00_3 ^ in[111:104] ^ in[103: 96];  
    assign out[95 : 88] = answer01_2 ^ answer01_3 ^ in[ 79: 72] ^ in[ 71: 64];
    assign out[ 63: 56] = answer02_2 ^ answer02_3 ^ in[ 47: 40] ^ in[ 39: 32];  
    assign out[ 31: 24] = answer03_2 ^ answer03_3 ^ in[ 15:  8] ^ in[  7:  0];

    // row 1
    assign out[119:112] = answer10_2 ^ answer10_3 ^ in[127:120] ^ in[103: 96];  
    assign out[ 87: 80] = answer11_2 ^ answer11_3 ^ in[ 95: 88] ^ in[ 71: 64];
    assign out[ 55: 48] = answer12_2 ^ answer12_3 ^ in[ 63: 56] ^ in[ 39: 32];  
    assign out[ 23: 16] = answer13_2 ^ answer13_3 ^ in[ 31: 24] ^ in[  7:  0];

    // row 2
    assign out[111:104] = answer20_2 ^ answer20_3 ^ in[127:120] ^ in[119:112];  
    assign out[ 79: 72] = answer21_2 ^ answer21_3 ^ in[ 95: 88] ^ in[ 87: 80];
    assign out[ 47: 40] = answer22_2 ^ answer22_3 ^ in[ 63: 56] ^ in[ 55: 48];  
    assign out[ 15:  8] = answer23_2 ^ answer23_3 ^ in[ 31: 24] ^ in[ 23: 16];
    
    assign out[103: 96] = answer30_2 ^ answer30_3 ^ in[111:104] ^ in[119:112];  
    assign out[ 71: 64] = answer31_2 ^ answer31_3 ^ in[ 79: 72] ^ in[ 87: 80];
    assign out[ 39: 32] = answer32_2 ^ answer32_3 ^ in[ 47: 40] ^ in[ 55: 48];  
    assign out[  7:  0] = answer33_2 ^ answer33_3 ^ in[ 15:  8] ^ in[ 23: 16];
    //galois_multiply gm4('h02, temp2[127:120]);
    //TODO: Finish this module.
    
endmodule
