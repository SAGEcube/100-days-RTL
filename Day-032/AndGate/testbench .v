`timescale 1ns / 1ps

module tb_not;
    reg a;
    wire not_out;
         
    decoder_not dut(a, not_out);
    initial begin
        #0  a= 1'b0;
        #10 a= 1'b1;

    end
    initial 
     begin
       $dumpfile("tb_not.vcd");
       $dumpvars(0,tb_not);
       $monitor("a: %b  not: %b ",a, not_out);
     #20 $finish;
     end
endmodule