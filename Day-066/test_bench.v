`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 10:09:20 AM
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


module test_bench( );
parameter N = 4 ;
reg clk , reset ;
wire [N-1:0] counter;

ring_counter DUV(clk , reset , counter ) ;
initial begin 
clk  = 1'b0 ;
forever #5 clk  = ~clk ;
end

initial begin 
reset  = 1 ;
#10 ;
reset  = 0 ;
end

initial begin 
$dumpfile("test_bench.vcd");
$dumpvars(0,test_bench) ;
 $monitor("Time = %0t  Counter = %b", $time, counter);
#100 $finish ;
end
endmodule
