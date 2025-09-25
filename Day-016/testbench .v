module tb();
  reg [3:0] dividend, divisor;
  wire [3:0] quotient, remainder;
  
  divider_4bit DAV(dividend, divisor, quotient, remainder);
  
  always begin 
    dividend = $random % 16;
    divisor  = $random % 16;
    #10;
  end 
  
  initial begin 
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    
    $monitor("%0d / %0d = %0d with remainder %0d", dividend, divisor, quotient, remainder);
    #100 $finish;
  end
endmodule
