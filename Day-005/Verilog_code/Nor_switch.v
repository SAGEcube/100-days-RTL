`timescale 1ns/1ps 

module nor_switch(
  output Vout ,
  input Vin1 ,
  input Vin2 
);
  
  supply0 Gnd ;
  supply1 Vcc ;
  wire temp ;
  
  pmos(temp,Vcc,Vin2);
  pmos(Vout, temp, Vin1);
  
  nmos(Vout,Gnd,Vin1);
  nmos(Vout, Gnd, Vin2);
  
endmodule ;