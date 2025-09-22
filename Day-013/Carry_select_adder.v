module fulladder (
  input A,B,Cin,
  output reg Sout, Cout
);
  always @(*) begin
    Sout = A ^ B ^ Cin;
    Cout = (A & B) | (B & Cin) | (Cin & A);
  end
endmodule

module mux (
  input a,b,sel,
  output reg y
);
  always @(*) begin
    y = (~sel & a) | (sel & b);
  end
endmodule

module Carry_select (
  input [3:0] a,b,
  input carry,
  output [3:0] sum,
  output Cout
);
  wire [16:1] w;

  // First chain (carry = 0)
  fulladder fa0(a[0], b[0], 1'b0, w[1], w[2]);
  fulladder fa1(a[1], b[1], w[2], w[3], w[4]);
  fulladder fa2(a[2], b[2], w[4], w[5], w[6]);
  fulladder fa3(a[3], b[3], w[6], w[7], w[8]);

  // Second chain (carry = 1)
  fulladder fa4(a[0], b[0], 1'b1, w[9],  w[10]);
  fulladder fa5(a[1], b[1], w[10], w[11], w[12]);
  fulladder fa6(a[2], b[2], w[12], w[13], w[14]);
  fulladder fa7(a[3], b[3], w[14], w[15], w[16]);

  // Muxes
  mux m0(w[1],  w[9],  carry, sum[0]);
  mux m1(w[3],  w[11], carry, sum[1]);
  mux m2(w[5],  w[13], carry, sum[2]);
  mux m3(w[7],  w[15], carry, sum[3]);
  mux m4(w[8],  w[16], carry, Cout);
endmodule
