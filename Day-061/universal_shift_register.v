`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2025 10:50:31 PM
// Design Name: 
// Module Name: universal_shift_register
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


module universal_shift_register(
input clk , reset , shift_left , shift_right ,
input [7:0] parallel_in , 
input [7:0] parallel_out
    );
    
    reg [7:0] reg_data ; 
    
    always@(posedge clk) begin 
    if (reset)
    reg_data<=8'b0 ;
    else if(shift_left)
    reg_data<= {reg_data[6:0],1'b0};
    else if(shift_right)
    reg_data<={1'b0,reg_data[7:1]};
    else
    reg_data<= parallel_in ;
    end 
    assign parallel_out = reg_data ;

endmodule
