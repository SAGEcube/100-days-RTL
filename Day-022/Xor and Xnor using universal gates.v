module mux_2_1 (
  input [1:0] i,
  input sel,
  output y_out
);
  assign y_out = sel ? i[1] : i[0];
endmodule 

module gate_mux(
  input a, b,
  output xor_out, xnor_out
);
  wire bbar;

  // Inverter using mux
  mux_2_1 mnot ({1'b1,1'b0}, b, bbar);

  // XOR = a?~b:b
  mux_2_1 mxor ({bbar, b}, a, xor_out);

  // XNOR = a?b:~b
  mux_2_1 mxnor ({b, bbar}, a, xnor_out);

endmodule
