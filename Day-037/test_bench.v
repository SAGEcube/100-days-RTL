`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2025 12:22:51 PM
// Design Name: 
// Module Name: test_bench
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


`timescale 1ns / 1ps

module test_bench;
reg [3:0]binary;
wire [3:0] gray_out;

binary2gray dut(binary, gray_out);

initial begin
        binary= 4'd0;
        #10;
        binary= 4'd1;
        #10;
        binary= 4'd2;
        #10;
        binary= 4'd3;
        #10;
        binary= 4'd4;
        #10;
        binary= 4'd5;
        #10;
        binary= 4'd6;
        #10;
        binary= 4'd7;
        #10;
        binary= 4'd8;
        #10;
        binary= 4'd9;
        #10;
        binary= 4'd10;
        #10;
        binary= 4'd11;
        #10;
        binary= 4'd12;
        #10;
        binary= 4'd13;
        #10;
        binary= 4'd14;
        #10;
        binary= 4'd15;
    end

initial
    begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0,test_bench);
     $monitor("binary: %b -> gray: %b", binary, gray_out);
    #160 $finish;
    end
endmodule
    

