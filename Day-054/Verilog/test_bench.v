`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 04:14:43 PM
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
reg clk,rst,t;
wire Q_sr, Q_jk, Q_d;
  T_using_SR_JK_D dut(clk, rst, t, Q_sr, Q_jk, Q_d);
  
  initial 
  begin 
       clk=0;
       t=0;
       forever #4 clk=~clk;
  end
    
  initial 
      begin
          rst=1;
          #10;
          rst=0;
          forever
          begin   
          #10 t = 1'b1;
          #20  t = 1'b0; 
          end
      end
    initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0,test_bench);
    $monitor("\t clock: %b  T: %b  Q_sr: %d  Q_jk: %d  Q_d: %b",clk,t,Q_sr, Q_jk, Q_d);
    #100$finish;
    end
endmodule