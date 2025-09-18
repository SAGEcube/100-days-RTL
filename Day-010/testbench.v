`timescale 1ns / 1ps

module test_bench;
    reg [3:0] A;
    reg [3:0] B;
    reg Carry_in;
    wire [3:0] Sum;
    wire Carry_out;
    
    parallel_adder dut (
        .A(A),
        .B(B),
        .Carry_in(Carry_in),
        .Sum(Sum),
        .Carry_out(Carry_out)
    );
    
    always begin        
        A = $random;
        B = $random;
        Carry_in = $random;
        #10; 
    end

    initial begin 
        $monitor("A= %b  B= %b  Carry_in= %b  Sum= %b  Carry_out= %b",
                  A, B, Carry_in, Sum, Carry_out);
        #60 $finish;
    end
endmodule
