module tb() ;
  wire Sout,Cout ;
  reg A,B ;
  reg clk ;
  
  half_adder  DAV(Sout,Cout,A,B);
  
  always #5 clk = ~clk ;
  
  initial begin 
    
    clk = 0;
    A = 0; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 0;
    #10;
    A = 1; B = 1;
    #10;
    $finish;
  end
  
  always @(posedge clk) begin
    $display("a = %b, b = %b, sum = %b, carry = %b", A, B, Sout, Cout);
  end
endmodule