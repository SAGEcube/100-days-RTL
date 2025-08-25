`timescale 1ns / 1ps

module test_bench;
    reg a, b;
    wire and_g, 
         or_g,
         not_g,
         nand_g,
         nor_g,
         xor_g,
         xnor_g;
         
    logicgates dut(a, b, and_g, or_g, not_g, nand_g, nor_g, xor_g, xnor_g);

    initial begin
        // For waveform dump
        $dumpfile("logic_gates_tb.vcd");
        $dumpvars(0, test_bench);

        // Monitor values in console
        $monitor("Time=%0t | a=%b b=%b | AND=%b OR=%b NOT=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
                  $time, a, b, and_g, or_g, not_g, nand_g, nor_g, xor_g, xnor_g);

        // Stimulus
        #10 a=1'b0; b=1'b0;
        #10 a=1'b0; b=1'b1;
        #10 a=1'b1; b=1'b0;
        #10 a=1'b1; b=1'b1;
        #10 $finish;
    end
endmodule
