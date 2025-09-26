module comparator #(parameter N = 8) (
  input  [N-1:0] a, b,
  output reg lesser,
  output reg greater,
  output reg equal
);

  always @(*) begin
    if (a < b) begin
      lesser  = 1'b1;
      greater = 1'b0;
      equal   = 1'b0;
    end 
    else if (a > b) begin
      lesser  = 1'b0;
      greater = 1'b1;
      equal   = 1'b0;
    end 
    else begin
      lesser  = 1'b0;
      greater = 1'b0;
      equal   = 1'b1;
    end
  end
endmodule
