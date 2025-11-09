`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2025 09:37:36 AM
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
reg [2:0] parallel_in;
wire [2:0] parallel_out;

pipo dut(clk, reset, parallel_in, parallel_out);

initial begin
    clk=1'b0;
    forever #5 clk=~clk;
    end
    
 initial begin
    reset= 1'b1;
    parallel_in= 3'b000;
    #10 reset= 1'b0;
    end
    
    always #10 parallel_in= $random;
    
 initial begin
 $dumpfile("test_bench.vcd");
 $dumpvars(0,test_bench);
    $monitor("\t\t clk: %d  reset: %d  parallel_in: %b  parallel_out: %b", clk, reset, parallel_in, parallel_out);
    #100 $finish;
    end
endmodule
