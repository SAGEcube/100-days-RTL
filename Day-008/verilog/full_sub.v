module full_sub (
  output Diff , Bout ,
  input A,B,C 
);
  
  assign Diff  =  A^B^C ;
  assign Bout  = (~A&(B^C) ) | (B&C) ;
endmodule 