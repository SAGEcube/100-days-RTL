module parity_gen(
  output wire parity,
  input  [3:0] data
);
  assign parity = ^data;  
endmodule
