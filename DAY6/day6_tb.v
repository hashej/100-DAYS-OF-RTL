module day6_tb();
  reg clk;
  reg reset;
  reg x_i;
  wire [3:0] sr_o;

  // Instantiate the module to be tested
  day6 u_day6(
    .clk(clk),
    .reset(reset),
    .x_i(x_i),
    .sr_o(sr_o)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial begin
    // Initialize signals
    clk = 0;
    reset = 0;
    x_i = 0;

    // Reset scenario
    reset = 1;
    #10 reset = 0;

    // Wait for some clock cycles
    #20;

    // Test scenario
    // Simulate shift register behavior
    x_i = 1;
    #10;
    x_i = 0;
    #10;
    x_i = 1;
    #10;
    x_i = 0;
    #10;

    // End simulation
    $finish;
  end
  initial begin
    $dumpfile("day6.vcd");
    $dumpvars(0, day6_tb);
  end

endmodule
