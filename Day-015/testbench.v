`timescale 1ns/1ps

module tb;
  reg [3:0] a, b;
  wire [7:0] out;
  
 
  multiplier DUT (.a(a), .b(b), .out(out));
  
  
  initial begin
    forever begin
      a = $random % 16;   // limit to 4-bit
      b = $random % 16;   // limit to 4-bit
      #10;
    end
  end

  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    $monitor("%0d * %0d = %0d", a, b, out);
    #100 $finish;  
  end
endmodule
