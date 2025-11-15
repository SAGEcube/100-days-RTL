`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2025 11:25:45 AM
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter#(parameter N = 4)(
input clk , reset , upordown , 
output reg [N-1:0] count
    );
    always@(posedge clk) begin 
     if(reset) count<= 0 ;
     else if(upordown == 1) begin 
       if (count == 2*N-1)
        count<=0 ;
       else 
        count <= count + 1 ;
     end
    else begin
      if( count == 0)
       count<=2*N-1 ;
     else 
       count<=count - 1 ;
    end
    end
endmodule
