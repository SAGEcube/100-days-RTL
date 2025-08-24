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
         
    // Instantiate DUT
    logic_gates dut (
        .a(a), .b(b),
        .and_g(and_g),
        .or_g(or_g),
        .not_g(not_g),
        .nand_g(nand_g),
        .nor_g(nor_g),
        .xor_g(xor_g),
        .xnor_g(xnor_g)
    );

    initial begin
        // Dump waveform file
        $dumpfile("waveform.vcd");  
        $dumpvars(0, test_bench);    

        // Apply test inputs
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;                 
    end
endmodule
