module tb();
  reg a, b;
  wire nand_out, nor_out;

  gates_mux DUT(a, b, nand_out, nor_out);

  initial begin
    // Stimulus
    #0  a = 1'b0; b = 1'b0;
    #10 a = 1'b0; b = 1'b1;
    #10 a = 1'b1; b = 1'b0;
    #10 a = 1'b1; b = 1'b1;
    #10 $finish;   // finish after last case
  end

  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    $monitor("t=%0t | a=%b b=%b -> nand=%b nor=%b", $time, a, b, nand_out, nor_out);
  end
endmodule
