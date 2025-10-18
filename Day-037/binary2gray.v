`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2025 12:22:06 PM
// Design Name: 
// Module Name: binary2gray
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


module binary2gray(
input [3:0] binary ,
output  [3:0] gray_out
    );
    buf buf1(gray_out[3],binary[3]);
    xor xor1(gray_out[2],binary[3],binary[2]),
        xor2(gray_out[1],binary[2],binary[1]),
        xor3(gray_out[0],binary[1],binary[0]);
endmodule
