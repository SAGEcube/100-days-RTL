module tb;
  wire parity;
  reg [3:0] data;
  
  parity_gen D1(parity, data);
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    $monitor("time=%0t | input: data=%b | output: parity=%b", $time, data, parity);
    
    data = 4'b0000; #10;
    data = 4'b1011; #10;
    data = 4'b0011; #10;
    
    $finish;
  end
endmodule
