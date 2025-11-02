`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025 10:36:53 AM
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
input t , clk ,reset ,
output reg Q
    );
    always@(posedge clk) begin 
    if(reset) Q<=1'b0;
    else 
    begin 
    if(t) 
    Q<=~Q;
    else
    Q<=Q;
    end
    end 
endmodule
