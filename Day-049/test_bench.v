`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 05:24:27 PM
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
reg clk,rst,d;
wire Q;

  D_flipflop dut(clk,rst,d,Q);
  
  initial begin 
  clk=0;
  d=0;
  forever #4 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;  
     rst=0;
    forever #10 d= ~d;
    end 
    
    initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0,test_bench);
    $monitor("\t clk: %d  D: %d  Q: %d", clk, d, Q);
    #80 $finish;
    end
endmodule
