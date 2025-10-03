module tb();
  reg a,b,cin ;
  wire sum ,carry ;
  
  full_adder  DAV(a,b,cin,sum,carry);
  
 integer i;
initial begin
  for (i=0; i<8; i=i+1) begin
    {a,b,cin} = i;   // assign all 3 bits at once
    #10;
  end
end
  
    initial begin
      $dumpfile("tb.vcd");
      $dumpvars(0,tb);
    $monitor("a = %b, b = %b, cin = %b, sum = %b, carry = %b", a, b, cin, sum, carry);
    #80 $finish;
  end
endmodule