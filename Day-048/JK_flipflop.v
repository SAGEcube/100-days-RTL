`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2025 11:23:55 AM
// Design Name: 
// Module Name: JK_flipflop
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


module JK_flipflop(
input j,k ,clk,reset,
output reg Q
    );
    always@(posedge clk) begin 
    if(reset) Q <= 1'b0 ;
    else 
    begin 
    case({j,k})
    2'b00:Q<=Q;
    2'b01:Q<=1'b0 ;
    2'b10:Q<=1'b1;
    2'b11:Q<=~Q;
    default: Q<=2'bxx;
    endcase
    end
    end
endmodule
