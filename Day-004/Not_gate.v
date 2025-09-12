`timescale 1ns/1ps ;

module not_gate(
  input in ,
  output out 
);
  
  supply0 gnd ;
  supply1 vcc ;
  
  pmos(out,vcc,in);
  nmos(out,gnd, in);
  
endmodule 