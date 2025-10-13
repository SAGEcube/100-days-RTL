//=================== 2-to-4 Decoder ===================
module decoder_2_4(
  input [1:0] i,
  output reg [3:0] y
);
  always @(*) begin
    y = 4'b0000;   // initialize all to 0
    case(i)
      2'b00: y[0] = 1'b1;
      2'b01: y[1] = 1'b1;
      2'b10: y[2] = 1'b1;
      2'b11: y[3] = 1'b1;
    endcase
  end
endmodule

//=================== NAND using Decoder ===================
module decoder_nor(
  input a, b,
  output nor_g
);
  wire [3:0] w;
  decoder_2_4 dec({a,b}, w);
  assign nor_g = w[0];   // NAND output using decoder
endmodule

