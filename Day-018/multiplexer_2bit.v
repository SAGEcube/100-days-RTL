module multiplexer_2bit
(
input [1:0] i ,
input select ,
output y_out
);

assign y_out  = select?i[1]:i[0] ;

endmodule 