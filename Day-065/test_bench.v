`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2025 11:26:00 AM
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
reg clk;
reg reset;
reg upordown;
wire [3:0] count;

up_down_counter uut (clk, reset, upordown, count);

initial begin
    clk = 0;
    reset = 1;
    #50 reset =0; 
    upordown = 0;
    #220;
    upordown = 1;
    #200;
    upordown = 0;
    #100;
    reset = 0;    
end

always #10 clk=~clk;

initial 
begin
$dumpfile("test_bench.vcd");
$dumpvars(0,test_bench) ;
$monitor("\t\t UporDown=%b   Count=%b",upordown,count);
#550 $finish;
end
endmodule
