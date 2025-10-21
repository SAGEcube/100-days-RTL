`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 11:33:41 PM
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
reg [7:0]data;
wire [3:0] bit0, bit1, bit2;
wire [11:0] BCD;

binary2bcd dut(data, bit0, bit1, bit2, BCD);

	always 
	begin
    data=$random;
    #10;
	end
	initial
    begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0,test_bench) ;
     $monitor("data: %d  BCD: %b",data,BCD);
    #80 $finish;
    end
endmodule
