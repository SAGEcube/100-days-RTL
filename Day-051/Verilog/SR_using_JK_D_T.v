module SR_using_JK_D_T(
    input S, R, clk, reset,
    output Q_jk, Q_d, Q_t
);
wire w1, w2, w3, w4, w5;

JK_flipflop JK(S, R, clk, reset, Q_jk);

assign w1 = ~R & Q_d;
assign w2 = S | w1;

D_flipflop D( clk, reset,w2, Q_d);

assign w3 = S & ~Q_t;
assign w4 = R & Q_t;
assign w5 = w3 | w4;

T_flipflop F(w5, clk, reset, Q_t);

endmodule
