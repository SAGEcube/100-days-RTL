module demux_2_1(
  input i ,
  input sel ,
  output y0,y1
);
  assign {y0,y1} = sel?{1'b0,i}:{i,1'b1} ; 
endmodule 

  