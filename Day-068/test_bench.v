`timescale 1ns/1ps

module test_bench();
    reg clk, rst;
    wire [3:0] gray_count;

    // Instantiate DUT
    gray_counter DUT (
        .clk(clk),
        .rst(rst),
        .gray_count(gray_count)
    );

    // Clock generation
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // Reset pulse
    initial begin
        rst = 1'b1;
        #10 rst = 1'b0;
    end

    // Monitoring & VCD dump
    initial begin
        $dumpfile("test_bench.vcd");
        $dumpvars(0, test_bench);
        $monitor("Time=%0t  Gray=%b", $time, gray_count);
        #175 $finish;
    end
endmodule
