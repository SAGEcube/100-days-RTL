module testbench();
  reg [3:0] i;
  reg [1:0] select;
  wire y_out;

  mux_4_1 DAV(i, select, y_out);

  initial begin
    // Apply some test values
    i = 4'b0001; select = 2'b00; #10;
    i = 4'b0010; select = 2'b01; #10;
    i = 4'b0100; select = 2'b10; #10;
    i = 4'b1000; select = 2'b11; #10;

    // Random values also
    repeat (5) begin
      i = $random;
      select = $random;
      #10;
    end
  end

  initial begin
    $dumpfile("testbench.vcd");   // ✅ corrected
    $dumpvars(0, testbench);
    $monitor("Time=%0t | Input Data: %b | Select Line: %b | Output: %b",
              $time, i, select, y_out);
    #200 $finish;
  end
endmodule
