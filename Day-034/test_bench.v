`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 08:00:00 PM
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
    reg a, b;
    wire xor_g, xnor_g;
         
    decoder_xor_xnor dut(a, b, xor_g, xnor_g);
    initial begin
            a= 1'b0; b= 1'b0;
        #10 a= 1'b0; b= 1'b1;
        #10 a= 1'b1; b= 1'b0;
        #10 a= 1'b1; b= 1'b1;
    end
    initial begin
      $dumpfile("test_bench.vcd");
      $dumpvars(0,test_bench);
      $monitor("a: %b  b: %b  xor: %b  xnor: %b",a, b, xor_g, xnor_g);
     #40 $finish;
     end
endmodule
