`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2025 10:53:30 AM
// Design Name: 
// Module Name: lfsr
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


module lfsr(
input clk, reset, 
output [7:0] lfsr_out 
    );
    
    reg [7:0] data ;
    always@(posedge clk) begin 
    if(reset) 
    data<=8'hff ;
    else 
    data <={data[6:0],data[7]^data[5]^data[3]^data[1]}; 
    end
    assign lfsr_out = data ;
endmodule
