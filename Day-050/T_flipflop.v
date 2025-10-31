`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 07:41:29 PM
// Design Name: 
// Module Name: T_flipflop
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


module T_flipflop(
input t, clk , rst,
output reg Q
    );
    always@(posedge clk)   
    begin 
    if(rst) Q<= 1'b0;
    
    else begin 
    if(t)
    Q<=~Q;
    else 
    Q<=Q;
    end 
    end 
     
endmodule
