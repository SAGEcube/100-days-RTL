`timescale 1ns / 1ps

module test_bench;
    parameter n = 4;
    reg  [n-1:0] num;
    wire [2*n-1:0] result;

    n_bit_square #(n) dut (.num(num), .result(result));

    initial begin
        $dumpfile("test_bench.vcd");
        $dumpvars(0, test_bench);
        $monitor("Time=%0t ns | num=%0d | num^2=%0d", $time, num, result);

        repeat (10) begin
            num = $random % 16;   // ensures values stay within 0-15
            #10;
        end

        $finish;
    end
endmodule
