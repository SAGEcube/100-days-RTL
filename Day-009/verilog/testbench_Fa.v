module tb() ;
  wire Sout,Cout ;
  reg A,B,C ;
  reg clk ;
  
  Full_adder  DAV(Sout,Cout,A,B,C);
  
  always #5 clk =~clk ;
  
  initial begin 
    clk =0 ;
    
     A = 0; B = 0; C = 0;
    #10;
    A = 0; B = 0; C = 1;
    #10;
    A = 0; B = 1; C = 0;
    #10;
    A = 0; B = 1; C = 1;
    #10;
    A = 1; B = 0; C = 0;
    #10;
   A = 1; B = 0; C = 1;
    #10;
    A = 1; B = 1; C = 0;
    #10;
    A = 1; B = 1; C = 1;
    #10;
    $finish;
  end
  
  always @(posedge clk) begin
    $display("A = %b, B = %b, C = %b, sum = %b, carry = %b", A, B, C, Sout, Cout);
  end
endmodule