`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 05:05:57 PM
// Design Name: 
// Module Name: piso
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


module piso(
input clk  , reset ,load,
input [2:0]parallel_in ,
output  serial_out
    );
    reg [2:0]q = 3'd0  ;
   always@(posedge clk ) begin 
   if(reset)q<=0 ;
   else begin 
   if(load) 
   q<=parallel_in;
   else begin
   q[0] = q[1] ;
   q[1] = q[2] ;
   q[2] = 1'bx ;
   end
   end
   end 
    
   assign serial_out  = q[0] ;
endmodule
