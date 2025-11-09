`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2025 09:36:33 AM
// Design Name: 
// Module Name: pipo
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

module D_flipflop(
input d, clk , reset ,
output reg Q 
);
always@(posedge clk) begin 
if(reset) Q<= 1'b0 ;
else 
Q<=d ;
 
end

endmodule 

module pipo(
input clk , reset ,
input  [2:0]  parallel_in ,
output  [2:0]  parallel_out
    );
    D_flipflop df1(parallel_in[0], clk ,reset, parallel_out[0]);
    D_flipflop df2(parallel_in[1], clk ,reset, parallel_out[1]);
    D_flipflop df3(parallel_in[2], clk ,reset, parallel_out[2]);
endmodule
