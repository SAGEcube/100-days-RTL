`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2025 12:36:06 PM
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
reg [1:0]a,b;
wire [3:0]out;

vedic_mul_2_2 dut(a,b,out);

always begin
    a=2'd2;
    b=2'd1;
    #10;
    a=2'd3;
    b=2'd2;
    #10;
    a=2'd0;
    b=2'd1;
    #10;
    a=2'd3;
    b=2'd1;
    #10;
    a=2'd2;
    b=2'd2;
    #10;
    a=2'd3;
    b=2'd3;
    #10;
    end
    
initial begin
$dumpfile("test_bench.vcd");
$dumpvars(0,test_bench);
$monitor("%d * %d = %d", a,b,out);
#60 $finish;
end
endmodule
