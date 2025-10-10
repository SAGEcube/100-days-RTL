`timescale 1ns/1ps

module test_bench;
  reg [2:0] in;
  wire [7:0] out;

  // Instantiate the 3-to-8 decoder module
  decoder_3_8 DUT (in, out);

  initial begin
    in = 3'b000;
  end

  // Apply all input combinations sequentially
  always begin
    #10 in = 3'b000;
    #10 in = 3'b001;
    #10 in = 3'b010;
    #10 in = 3'b011;
    #10 in = 3'b100;
    #10 in = 3'b101;
    #10 in = 3'b110;
    #10 in = 3'b111;
  end

  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars(0, test_bench);
    $monitor("Time=%0t | in=%b | out=%b", $time, in, out);
    #90 $finish;
  end
endmodule
