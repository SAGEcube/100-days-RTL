

module tb();

  wire Diff ,Bout ;

  reg A,B ;

  reg clk ;

  

  Half_sub  DAV(Diff,Bout,A,B);

  

  always #5 clk =~clk ;

  

  initial begin 

    clk = 0;

    

     A = 0; B = 0;

    #10;

    A = 0; B = 1;

    #10;

    A = 1; B = 0;

    #10;

    A = 1; B = 1;

    #10

    $finish;

  end



  always @(posedge clk) begin

    $display("A: %b, B: %b, difference: %b, borrow: %b", A, B, Diff, Bout);

  end

endmodule