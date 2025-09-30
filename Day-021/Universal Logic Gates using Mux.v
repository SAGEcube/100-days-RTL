module mux_2_1 (
  input  [1:0] i,
  input select,
  output wire y_out
);
  assign y_out = select ? i[1] : i[0];
endmodule 

module gates_mux(
  input a, b,
  output wire nand_out, nor_out
);
  wire bbar;

  // bbar = ~b
  mux_2_1 mbbr({1'b0,1'b1}, b, bbar);

  // nand_out = ~(a & b)
  mux_2_1 mand({1'b0,1'b1}, (a & b), nand_out);

  // nor_out = ~(a | b)
  mux_2_1 mor({1'b0,bbar}, a, nor_out);
endmodule
