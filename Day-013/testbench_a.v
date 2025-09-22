`timescale 1ns/1ps

module tb();
    reg [3:0] a, b;
    reg carry;
    wire [3:0] sum;
    wire Cout;

    Carry_select DUT(a, b, carry, sum, Cout);

    initial begin
        $dumpfile("carry_select.vcd");   // waveform dump file
        $dumpvars(0, tb);               // dump all signals in this module

        carry = 1'b0; a = 4'b1011; b = 4'b1010;
        #10 carry = 1'b1; a = 4'b1001; b = 4'b1110;
        #10 carry = 1'b0; a = 4'b0001; b = 4'b1010;
        #10 carry = 1'b1; a = 4'b1100; b = 4'b0011;
        #10 $finish;
    end

    initial begin
        $monitor("t=%0t | a=%b b=%b carry=%b | sum=%b Cout=%b",
                  $time, a, b, carry, sum, Cout);
    end
endmodule
