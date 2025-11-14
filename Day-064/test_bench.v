`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 05:01:47 PM
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
reg clk, reset;
wire [3:0] counter;

sequence_counter dut(clk, reset,counter);

    initial 
        begin
        clk = 0;
        reset = 1;
        
       # 10 reset = 0 ;
        end
        
    always #5 clk = ~clk;
    
    initial begin
    $dumpfile("test_bench.vcd") ;
    $dumpvars(0,test_bench) ;
    $monitor("\t\t clk: %b    counter:%b", clk, counter);
    #140 $finish;
    end
endmodule
