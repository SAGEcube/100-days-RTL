`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2025 04:56:23 PM
// Design Name: 
// Module Name: testbench_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_mux();
reg [1:0] i;
reg select ;
wire y_out ;

multiplexer_2bit  DAV(i,select,y_out);

always begin 

i=$random;
select=$random;
            #10;
		end
    initial
    begin 
    $dumpfile("testbench_mux.vcd");
    $dumpvars(0,testbench_mux);
    $monitor("Input Data : %0d  Select Line : %0d Output : %0d ",i, select, y_out);
    #100 $finish;
    end
endmodule



