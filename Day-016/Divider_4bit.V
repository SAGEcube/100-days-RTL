module divider_4bit
(
  input [3:0] dividend, divisor,
  output reg [3:0] quotient, remainder
);

  always @(*) begin
    quotient = 0;
    remainder = dividend;
    
    if (divisor != 0) begin
      while (remainder >= divisor) begin
        remainder = remainder - divisor;
        quotient = quotient + 1;
      end
    end
    else begin
      quotient = 4'b1111;   
      remainder = dividend;
    end
  end
endmodule
