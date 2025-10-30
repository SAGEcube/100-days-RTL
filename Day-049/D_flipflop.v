`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 05:23:53 PM
// Design Name: 
// Module Name: D_flipflop
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


module D_flipflop(
input clk,reset,d ,
output reg Q
    );
    
    always@(posedge clk) begin 
    if({reset})
    Q<=1'b0;
    else 
    Q<=d ;
    end 
endmodule
