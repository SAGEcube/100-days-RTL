`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 10:37:26 PM
// Design Name: 
// Module Name: JK_using_SR_D_T
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


module JK_using_SR_D_T(
input J,K,clk,reset,
output Q_sr,Q_d,Q_t
    );
    wire w1,w2,w3,w4,w5,w6,w7,w8;
    assign w1 = J & (~Q_sr);
    assign w2 = K & Q_sr;
    
    SR_flipflop SR(clk,reset,w1,w2,Q_sr);
    
    assign w3 = J & (~Q_d);
    assign w4 = (~K) & Q_d;
    assign w5 = w3|w4 ;
    D_flipflop D(clk,reset,w5,Q_d);
    
    assign w6 = J & (~Q_t) ;
    assign w7 = (K) & (Q_t) ;
    assign w8 = w6|w7 ;
    
    T_flipflop T(w8,clk,reset,Q_t);

endmodule
