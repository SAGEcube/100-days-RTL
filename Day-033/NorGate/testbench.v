
//=================== Testbench ===================
`timescale 1ns / 1ps
module tb_nor;
  reg a, b;
  wire nor_g;

  decoder_nor dut(a, b, nor_g);

  initial begin
    $dumpfile("tb_nor.vcd");
    $dumpvars(0, tb_nor);
    $monitor("Time=%0t | a=%b b=%b -> nand_g=%b", $time, a, b, nor_g);
    
    a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;
    #10 $finish;
  end
endmodule