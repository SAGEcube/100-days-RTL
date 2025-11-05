`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 11:21:25 PM
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

  dual_edge_trig_ff dut(clk,rst,d,Q);
  
  initial begin 
  clk=0;
  d=0;
  forever #9 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;  
     rst=0;
    forever #6 d= ~d;
    end 
    
    initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0,test_bench);
    $monitor("\t\t\t clk: %d  D: %d  Q: %d", clk, d, Q);
    #80 $finish;
    end
endmodule
