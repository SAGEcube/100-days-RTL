module tb();
  reg i,sel;
  wire y0,y1 ;
  
  demux_2_1  DAV(i ,sel, y0,y1);
  
  initial begin 
    sel=0; i=0; 
#10;
sel=0; i=1; 
#10;
sel=1; i=0; 
#10;
sel=1; i=1; 
end
initial 
     begin 
       $dumpfile("tb.vcd");
       $dumpvars(0,tb);
       $monitor("sel: %b  i: %b  y[0]: %b  y[1]: %b", sel, i, y0, y1);
     #40 $finish;
     end
endmodule