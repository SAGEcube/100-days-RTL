module sipo(
input clk , reset, serial_in ,
output  [2:0] parallel_out
);

D_flipflop df1(serial_in, clk, reset,parallel_out[0]);
D_flipflop df2(parallel_out[0], clk, reset,parallel_out[1]);
D_flipflop df3(parallel_out[1], clk, reset,parallel_out[2]);




endmodule