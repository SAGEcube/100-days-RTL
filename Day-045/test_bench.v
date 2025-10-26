`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 11:36:59 PM
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
reg [3:0] a,b;
wire [7:0] out;

vedic_mul_4_4 dut(a,b,out);

always begin
a=$random;
b=$random;
#10;
end

initial begin
$dumpfile("test_bench.vcd");
$dumpvars(0,test_bench);
$monitor("%d * %d = %d", a,b,out);
#60 $finish;
end
endmodule
