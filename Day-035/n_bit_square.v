`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2025 11:31:40 AM
// Design Name: 
// Module Name: n_bit_square
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


module n_bit_square(
num , result 
    );
    parameter N = 4 ;
    input [N-1:0] num ;
    output reg  [2*N-1:0] result ;
    
    
    always@(*) begin 
    result = num*num ;
    
    end
    
endmodule
