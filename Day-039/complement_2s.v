`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2025 11:33:12 AM
// Design Name: 
// Module Name: complement_2s
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


module complement_2s(
input [3:0] data ,
output signed [3:0] out 
    );
    wire [3:0] temp;
    assign temp  = 4'b1111 - data;
    assign out  = temp + 4'b0001 ;
endmodule
