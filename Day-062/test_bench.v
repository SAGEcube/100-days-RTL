`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 02:43:58 PM
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
reg [7:0] data;
reg [2:0] amt;
wire [7:0] out;

barrel_shifter dut(data, amt, out);

initial begin
data= 8'hf0;
amt=0;
forever #10 amt= amt+1;
end

initial begin
$dumpfile("test_bench.vcd");
$dumpvars(0,test_bench);
$monitor("\t\t data: %b  shifting amount: %d  output: %b", data, amt, out);
#80 $finish;
end
endmodule
