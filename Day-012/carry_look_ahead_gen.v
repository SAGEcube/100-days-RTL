module carry_look_ahead_gen(
  input  [3:0] a, b,
  input        cin,
  output [3:0] sum,
  output       carry
);

  wire [3:0] p, g;   // propagate and generate
  wire [3:0] c;

  // Generate and Propagate
  assign g = a & b;   // bitwise AND
  assign p = a ^ b;   // bitwise XOR

  // Carry look-ahead equations
  assign c[0] = g[0] | (p[0] & cin);
  assign c[1] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
  assign c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
  assign c[3] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) |
                (p[3] & p[2] & p[1] & g[0]) |
                (p[3] & p[2] & p[1] & p[0] & cin);

  // Sum bits
  assign sum[0] = p[0] ^ cin;
  assign sum[1] = p[1] ^ c[0];
  assign sum[2] = p[2] ^ c[1];
  assign sum[3] = p[3] ^ c[2];

  // Final carry
  assign carry = c[3];

endmodule
