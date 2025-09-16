`timescale 1ns/1ps

module tb();
  wire Diff, Bout;
  reg A, B;
  reg clk;

  half_sub DAV(Diff, Bout, A, B);

  always #5 clk = ~clk;

  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);

    clk = 0;
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
  end

  always @(posedge clk) begin
    $display(" A:%b  B:%b  Difference:%b  Borrow:%b", A, B, Diff, Bout);
  end
endmodule
