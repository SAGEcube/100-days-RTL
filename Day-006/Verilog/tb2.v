`timescale 1ns / 1ps

module test_bench_pc;
  reg [7:0] data;
  reg parity;
  reg clk;
  wire error;

  parity_check dut(error , parity , data );

  always #5 clk = ~clk;

  initial begin
    // dump setup
    $dumpfile("pc_tb.vcd");
    $dumpvars(0, test_bench_pc);

    clk = 0;
    data = 8'b00000000; parity = 1; #10;
    data = 8'b00000001; parity = 0; #10;
    data = 8'b00000011; parity = 1; #10;
    data = 8'b10000000; parity = 0; #10;
    data = 8'b11011111; parity = 1; #10;
    data = 8'b01010101; parity = 0; #10;
    data = 8'b10101010; parity = 1; #10;
    $finish;
  end

  always @(posedge clk) begin
    $display("Time=%0t | Data=%b | Parity=%b | Error=%b", $time, data, parity, error);
  end
endmodule
