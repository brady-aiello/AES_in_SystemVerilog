`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2017 08:28:59 PM
// Design Name: 
// Module Name: experiment_one_many
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


module experiment_one_many(
    input [15:0] in,
    output [15:0] out
    );
    assign out = in & 'b1;
    
endmodule
