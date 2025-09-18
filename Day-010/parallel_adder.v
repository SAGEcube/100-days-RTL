module full_adder (
  input A,B,C ,
  output Sout , Cout 
  
);
  
  assign Sout  = A^B^C ;
  assign Cout  = (A&B)|C&(A^B);
  
endmodule 

module parallel_adder(
  input [3:0] A,B ,
  input Carry_in ,
  output [3:0] Sum ,
  output Carry_out 
);
  wire[2:0] W ;
  
  full_adder F0(A[0],B[0],Carry_in,Sum[0],W[0]);
  full_adder F1(A[1],B[1],W[0],Sum[1],W[1]);
  full_adder F2(A[2],B[2],W[1],Sum[2],W[2]);
  full_adder F3(A[3],B[3],W[2],Sum[3],Carry_out);
endmodule 