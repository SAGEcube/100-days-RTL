`timescale 1ns / 1ps

module test_bench;
    reg signed [2:0] Q, M;  // Changed to 3-bit to match module
    wire signed [5:0] result;  // Changed to 6-bit to match module
    
    booth_algorithm dut(Q, M, result);
    
    initial begin

        
        Q = 3; M = 7; #10;
        Q = 3; M = -7; #10;
        Q = -3; M = -7; #10;
        Q = 5; M = 6; #10;  // Note: 5 and 6 are out of range for 3-bit signed
        Q = 5; M = -6; #10;  // These will wrap around
        Q = -5; M = -6; #10;
    end
    
    initial begin
            // Setup waveform dump
        $dumpfile("booth_algorithm.vcd");
        $dumpvars(0, test_bench);
        $monitor("Time=%0t: %d * %d = %d", $time, Q, M, result);
        #60 $finish;
    end
endmodule