`timescale 1ns/1ps

module tb;
  reg in;
  wire out;

  // Assuming not_gate(in, out) is defined elsewhere
  not_gate d1(.in(in), .out(out));

  initial begin
    $monitor("time=%0t | in = %b out = %b", $time, in, out);
    in = 1'b0;          // start value
    forever #50 in = ~in; // toggle every 50ns
  end

  initial begin
    #600 $finish;       // stop simulation at 600ns
  end

endmodule
