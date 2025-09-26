module tb;
  reg [7:0] a, b;
  wire lesser, greater, equal;
  
  comparator #(8) DAV (.a(a), .b(b), .lesser(lesser), .greater(greater), .equal(equal));
  
  always begin 
    a = $random % 256;   // 8-bit random
    b = $random % 256;   // 8-bit random
    #10;
  end 
  
  initial begin 
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    $monitor("a=%0d  b=%0d  -> Lesser=%0d  Greater=%0d  Equal=%0d", a, b, lesser, greater, equal);
    #100 $finish;
  end
endmodule
