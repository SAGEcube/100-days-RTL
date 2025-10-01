module tb();
  reg a, b;
  wire xor_out, xnor_out;
  
  gate_mux DAV(a, b, xor_out, xnor_out);
  
  initial begin
    a = 1'b0; b = 1'b0;
    #10 a = 1'b0; b = 1'b1;
    #10 a = 1'b1; b = 1'b0;
    #10 a = 1'b1; b = 1'b1;
  end

  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    $monitor("time=%0t | a=%b b=%b xor=%b xnor=%b", $time, a, b, xor_out, xnor_out);
    #40 $finish;
  end
endmodule
