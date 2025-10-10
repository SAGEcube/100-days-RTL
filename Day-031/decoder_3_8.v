module decoder_3_8(
  input[2:0] in,
  output reg [7:0]  out 
);
  
  always@(*) begin 
    out = 0;
    case(in)
      3'b000:out[0] = 1'b1 ;
      3'b000:out[1] = 1'b1 ;
      3'b000:out[2] = 1'b1 ;
      3'b000:out[3] = 1'b1 ;
      3'b000:out[4] = 1'b1 ;
      3'b000:out[5] = 1'b1 ;
      3'b000:out[6] = 1'b1 ;
      3'b000:out[7] = 1'b1 ;
      default : out  = 0 ;
    endcase
  end 
endmodule 
      