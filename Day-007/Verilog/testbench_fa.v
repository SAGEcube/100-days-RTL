`timescale 1ns/1ps

module tb;
  wire Sout, Cout;
  reg A, B, C;
  reg clk;
  
  full_adder DUT(Sout, Cout, A, B, C);
  
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    
    clk = 0;
   A=0; B=0; C=0; #10;
    A=0; B=0; C=1; #10;
    A=0; B=1; C=0; #10;
    A=0; B=1; C=1; #10;
    A=1; B=0; C=0; #10;
    A=1; B=0; C=1; #10;
    A=1; B=1; C=0; #10;
    A=1; B=1; C=1; #10
    $finish;
  end
  
  always @(posedge clk) begin
    $display("A=%b B=%b C=%b | Sum=%b Carry=%b", A, B,C, Sout, Cout);
  end
endmodule
