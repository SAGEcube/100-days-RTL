`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2025 03:01:25 PM
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
wire Q_sr, Q_jk, Q_t;

  D_using_SR_JK_T dut(clk,rst,d,Q_sr, Q_jk, Q_t);
  
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
    $monitor("\t clk: %d  D: %d  Q_sr: %d  Q_jk: %d  Q_t: %d", clk, d, Q_sr, Q_jk, Q_t);
    #80 $finish;
    end
endmodule
