
module tb();
  reg a,b;
  wire and_out, or_not, not_out;

  gates_mux DAV(a,b,and_out,or_not,not_out);

  initial begin
    a= 1'b0; b= 1'b0;
    #10 a= 1'b0; b= 1'b1;
    #10 a= 1'b1; b= 1'b0;
    #10 a= 1'b1; b= 1'b1;
  end

  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
    $monitor("a: %b  b: %b  and: %b  or: %b  not: %b", a, b, and_out, or_not, not_out);
    #40 $finish;
  end
endmodule
