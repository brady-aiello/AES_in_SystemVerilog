`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 09:32:41 PM
// Design Name: 
// Module Name: and_one_to_fifteen
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


module and_one_to_fifteen(
    input [14:0] inbus,
    input inbit,
    output [14:0] out
    );
    assign out = inbus & {inbit,inbit,inbit,inbit,inbit,inbit,inbit,inbit,inbit,inbit,inbit,inbit,inbit,inbit,inbit};
    
endmodule
