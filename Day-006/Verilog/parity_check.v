
module parity_check(
  output wire error ,
  input parity ,
  input [3:0] data 
);
  
  assign error = ^({parity, data});
endmodule 