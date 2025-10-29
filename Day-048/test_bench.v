`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2025 11:24:18 AM
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
reg clk,rst,j,k;
wire Q;

  JK_flipflop dut(j,k,clk,rst,Q);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;
     
     j = 1'b0;
     k = 1'b0;     
     #10;
     
     rst=0;
     #10;
     j = 1'b0;
     k = 1'b1;     
     #10;
     
     j = 1'b1;
     k = 1'b0;     
     #10;
     
     j = 1'b1;
     k = 1'b1;
     #10;
    end 
    
    initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0,test_bench);
    $monitor("\t clk: %d  J: %d  K: %d  Q: %d", clk, j, k, Q);
    #80 $finish;
    end
endmodule
