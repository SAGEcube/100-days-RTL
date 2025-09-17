module tb();
  wire Diff , Bout ;
  reg A,B,C ;
  reg clk ;
  
  Full_sub  DAV(Diff,Bout , A,B,C);
  
  always #5 clk =~clk ;
  
  initial begin 
    clk = 0;
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
    $display("A: %b, b: %b, C: %b, difference: %b, borrow: %b", A, B, C, Diff, Bout);
  end
endmodule