`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2025 07:06:10 PM
// Design Name: 
// Module Name: jhonson_counter
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


module jhonson_counter#(parameter N = 4)(
input clk , reset ,
output reg [3:0] counter
    );
    always@(posedge clk ) begin 
    if (reset) counter <= 0 ;
    else 
    counter <= {~counter[0], counter[N-1:1]};
    end
endmodule
