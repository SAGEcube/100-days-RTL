// Code your design here
module synchronous_asynchronous_reset(
  input clk,rst,in,
  output reg out_sync,out_async
);
  
  always@(posedge clk) begin
    if(rst) out_sync < = 1'b0;
    else
      out_sync <= in;
  end
  
  always@(posedge clk , posedge rst) begin
    if(rst) out_async < = 1'b0;
    else
      out_async <= in;
  end
endmodule 
  