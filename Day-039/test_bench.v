`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2025 11:33:38 AM
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
reg [3:0] data;
wire signed [3:0]out;

complement_2s dut(data, out);

initial begin
        data= 4'd0;
        #10;
        data= 4'd1;
        #10;
        data= 4'd2;
        #10;
        data= 4'd3;
        #10;
        data= 4'd4;
        #10;
        data= 4'd5;
        #10;
        data= 4'd6;
        #10;
        data= 4'd7;
        #10;
        data= 4'd8;
        #10;
        data= 4'd9;
        #10;
        data= 4'd10;
        #10;
        data= 4'd11;
        #10;
        data= 4'd12;
        #10;
        data= 4'd13;
        #10;
        data= 4'd14;
        #10;
        data= 4'd15;
    end

initial
    begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0,test_bench);
     $monitor("input number: %d  2's Complement: %d", data, out);
    #160 $finish;
    end
endmodule
