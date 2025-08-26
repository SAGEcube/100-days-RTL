`timescale 1ns / 1ps

module testbench();
  reg a ,b ;
  wire and_g ;
  wire or_g ;
  wire not_g ;
  wire nand_g ;
  wire nor_g ;
  wire xor_g;
  wire xnor_g ;
  
  logic_gates uut(a ,b, and_g,or_g ,not_g ,nand_g,nor_g ,xor_g,xnor_g) ;
  
  initial begin 
    $dumpfile("testbench.vcd") ;
    $dumpvars(0,testbench);
    
    $monitor("Time=%0t | a=%b b=%b | AND=%b OR=%b NOT(a)=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
             $time, a, b, and_g, or_g, not_g, nand_g, nor_g, xor_g, xnor_g);

    a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;
    #10 $finish;
  end
endmodule
