`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2025 04:55:18 PM
// Design Name: 
// Module Name: mod_N_counter
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


module mod_N_counter#(parameter N = 6 ,parameter LENGTH = 3)(
input clk , reset , 
output reg [LENGTH-1:0]counter
    );
    always@(posedge clk) begin 
     if(reset) counter <= 0 ;
     else 
     begin 
     if(counter == N-1 ) counter <= 0 ;
     else counter <= counter + 1 ;
     end   
    end
endmodule
