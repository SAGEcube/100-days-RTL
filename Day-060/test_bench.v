`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2025 10:53:50 AM
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
wire [7:0] lfsr_out;

lfsr dut(clk, reset, lfsr_out);

initial begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
end
always #5 clk = ~clk;
initial begin 
$dumpfile("test_bench.vcd");
$dumpvars(0,test_bench);
$monitor("\t\t clk: %b   lfsr_out: %b", clk, lfsr_out);
#115 $finish;
end 
endmodule

