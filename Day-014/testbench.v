`timescale 1ns / 1ps

module test_bench;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

   
    carry_skip_adder dut (
        .sum(sum),
        .cout(cout),
        .a(a),
        .b(b),
        .cin(cin)
    );

    initial begin
        
        $dumpfile("carry_skip_adder_tb.vcd");
        $dumpvars(0, test_bench);

        
        a = 4'b1000; b = 4'b0011; cin = 1'b0;
        #10 a = 4'b0001; b = 4'b1010; cin = 1'b1;
        #10 a = 4'b0110; b = 4'b0110; cin = 1'b0;
        #10 a = 4'b0111; b = 4'b1110; cin = 1'b0;
        #10 a = 4'b1001; b = 4'b0110; cin = 1'b1;
        #10 a = 4'b1001; b = 4'b0100; cin = 1'b0;
        #10 a = 4'b1111; b = 4'b1110; cin = 1'b1;
        #10 $finish;
    end

    initial begin
        $monitor("time=%0t a=%b b=%b cin=%b sum=%b cout=%b",
                  $time, a, b, cin, sum, cout);
    end
endmodule
