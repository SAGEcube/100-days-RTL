`timescale 1ns/1ps 

module tb();
  wire Vout ;
  reg Vin1;
  reg Vin2 ;
  
  nand_switch D1(Vout , Vin1,Vin2);
  nor_switch D2(Vout, Vin1,Vin2);
 
  
  initial 
    begin 
      $dumpfile("tb.vcd");
      $dumpvars(0, tb);
      $monitor("Output : Vout =%b |Inputs: Vin1 =%b Vin2 =%b|", Vout , Vin1, Vin2);
      Vin1 = 1; Vin2 = 1; #5;
      Vin1 = 0 ; Vin2 = 1; #5 ;
      Vin1 = 1; Vin2 = 0 ; #5 ;
      Vin1 = 0 ; Vin2 = 0 ; #5 ;
      $finish ;
    end 
endmodule