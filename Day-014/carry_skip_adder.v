module fulladder
  (
    input a,b,cin ,
    output sout ,cout 
  );
  assign sout  = a^b^cin ;
  assign cout  = (a&b)|cin&(a^b) ;
  
endmodule 

module paralleladder 
  (
    input [3:0] A,B ,
    input carry ,
    output[3:0] sum ,
    output carry_out 
  );
  wire [2:0] c ;
  
  fulladder f0(A[0],B[0],carry,sum[0],c[0]);
  fulladder f1(A[1],B[1],c[0],sum[1],c[1]);
  fulladder f2(A[2],B[2],c[1],sum[2],c[2]);
  fulladder f3(A[3],B[3],c[3],sum[3],carry_out);
endmodule 

module carry_skip_adder
  (
    output [3:0] sum ,
    output cout ,
    input [3:0] a,b ,
    input cin 
  );
  
  wire c,sel ;
  wire [3:0] p ;
  
  paralleladder pa(a,b,cin,sum,carry_out ) ;
  
  xor (p[0],a[0],b[0]),
  (p[1],a[1],b[1]),
  (p[2],a[2],b[2]),
  (p[3],a[3],b[3]);
  
  and (sel, p[0],p[1],p[2],p[3]) ;
  
  assign cout  = sel ? cin :c ;
endmodule 


  