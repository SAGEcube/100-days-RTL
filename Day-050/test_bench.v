`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 07:41:51 PM
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
wire q;
  T_flipflop dut(t,clk,rst,q);
  
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
    $monitor("\t clock: %b  T: %b  Q: %b",clk,t,q);
    #100$finish;
    end
endmodule
