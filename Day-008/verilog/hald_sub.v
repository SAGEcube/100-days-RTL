
module half_sub (
  output Diff , Bout ,
  input A,B
);
  
  assign Diff  = A^B ;
  assign Bout  = ~A^B;
  
endmodule 
