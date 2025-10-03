module mux_2_1(
  input d1, d0,
  input sel,
  output y
);
  assign y = sel ? d1 : d0;
endmodule

module full_adder(
  input a,b,cin,
  output sum,carry
);
  wire axorb, sum_int;

 
  mux_2_1 m0(~b, b, a, axorb);

  
  mux_2_1 m1(~cin, cin, axorb, sum);

  
  wire c1, c2;
  mux_2_1 m2(b, 1'b0, a, c1);     
  mux_2_1 m3(cin, 1'b0, axorb, c2); 
  mux_2_1 m4(c1, c2, axorb, carry); 

endmodule
