`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 10:09:00 AM
// Design Name: 
// Module Name: ring_counter
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


module ring_counter#(parameter N = 4)(
 input clk , reset , 
 output reg [N-1 : 0 ] counter 
    );
    always@(posedge clk ) begin 
      if(reset) counter <= 1 ;
      else counter <= {counter[0] , counter[N-1:1]} ; 
    end 
endmodule
