module tb();
  reg i;
  reg [2:0] sel ;
  wire y0,y1,y2,y3,y4,y5,y6,y7;
  
  mux_8_1  DAV(i,sel,y0,y1,y2,y3,y4,y5,y6,y7);
  
  
 
    
     always begin
    sel= $random;
    i= 1'b1;
    #10;
    end
    initial 
     begin
       $dumpfile("tb.vcd");
       $dumpvars(0,tb);
       $monitor("sel: %b  i: %b  y0 = %0b  y1 = %0b  y2 = %0b  y3 = %0b  y4 = %0b  y5 = %0b  y6 = %0b  y7 = %0b", sel, i, y0, y1, y2, y3, y4, y5, y6, y7);
     #80 $finish;
     end
endmodule

