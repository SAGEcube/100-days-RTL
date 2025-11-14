`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 05:01:27 PM
// Design Name: Sequence Counter
// Module Name: sequence_counter
// Description: 
// Generates the sequence: 0000 → 0010 → 0101 → 1000 → 1011 → 1110 → 0000 → ...
//////////////////////////////////////////////////////////////////////////////////

module sequence_counter(
    input clk,
    input reset,
    output reg [3:0] counter
);

    reg [3:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 4'b0000;
            counter <= 4'b0000;
        end 
        else begin
            case (count)
                4'b0000: begin
                    counter <= 4'b0000;
                    count <= 4'b0010;
                end
                4'b0010: begin
                    counter <= 4'b0010;
                    count <= 4'b0101;
                end
                4'b0101: begin
                    counter <= 4'b0101;
                    count <= 4'b1000;
                end
                4'b1000: begin
                    counter <= 4'b1000;
                    count <= 4'b1011;
                end
                4'b1011: begin
                    counter <= 4'b1011;
                    count <= 4'b1110;
                end
                4'b1110: begin
                    counter <= 4'b1110;
                    count <= 4'b0000;
                end
                default: begin
                    counter <= 4'b0000;
                    count <= 4'b0000;
                end
            endcase
        end
    end
endmodule
