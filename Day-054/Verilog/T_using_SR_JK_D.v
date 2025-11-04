`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 04:14:28 PM
// Design Name: 
// Module Name: T_using_SR_JK_D
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


module T_using_SR_JK_D(
input clk , reset, t ,
output Q_sr,Q_jk,Q_d
    );
    
    wire w1,w2,w3;
    
    assign w1 = t & (~Q_sr) ;
    assign w2 = t & Q_sr ;
    
    SR_flipflop SR(clk, reset,w1,w2,Q_sr);
    
    JK_flipflop JK(t,t,clk,reset,Q_jk);
    
    assign w3 = t^Q_d ;
    D_flipflop D(w3,clk,reset,Q_d);
endmodule
