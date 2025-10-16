`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 11:06:30 AM
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
reg [6:0]in;
wire out;
 majority_input dut(in, out);
    initial begin 
		in=7'd99;
            #10;
            in=7'd28;
            #10;
            in=7'd119;
            #10;
            in=7'd101;
            #10;
            in=7'd32;
            #10;
            in=7'd48;
            #10;
            in=7'd75;
            #10;
		end
    initial
    begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0,test_bench);
     $monitor("%b is a majority input of number %b ",out, in);
    #70 $finish;
    end
endmodule
