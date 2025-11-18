`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 11:07:09 PM
// Design Name: 
// Module Name: gray_counter
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


module gray_counter(
    input clk,
    input rst,
    output reg [3:0] gray_count
);
    reg [3:0] bin_count;

    always @(posedge clk) begin
        if (rst) begin
            bin_count  <= 4'b0000;
            gray_count <= 4'b0000;
        end else begin
            bin_count  <= bin_count + 1;
            gray_count <= {
                bin_count[3],
                bin_count[3] ^ bin_count[2],
                bin_count[2] ^ bin_count[1],
                bin_count[1] ^ bin_count[0]
            };
        end
    end
endmodule
    
