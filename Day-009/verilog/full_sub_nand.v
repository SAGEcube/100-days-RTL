module Full_sub(
  output Diff , Bout ,
  input A,B,C 
);
  
  wire [6:0] w ;
  
  nand n0 (w[0],A,B) ;
  nand n1 (w[1],A,w[0]) ;
  nand n2 (w[2],B,w[1]) ;
  nand n3 (w[3],w[1],w[2]) ;
  nand n4 (w[4],w[3],C) ;
  nand n5 (w[5],w[3],w[4]) ;
  nand n6 (w[6],w[4],C) ;
  nand n7 (Diff,w[5],w[6]) ;
  nand n8 (Bout,w[2],w[6]) ;
endmodule 