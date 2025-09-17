module Half_sub(

  output Diff , Bout ,

  input A,B 

) ;

  

  wire [2:0] w ;

  

  nand n0(w[0],A,B);

  nand n1(w[1],A,w[0]);

  nand n2(w[2],B,w[0]);

  nand n3(Diff,w[1],w[2]);

  nand n4(Bout,w[2],w[2]);

endmodule





