module day7_tb();

  reg clk;
  reg reset;
  wire [3:0] lfsr_o;

  // Instantiate the DUT (Design Under Test)
  day7 dut (
    .clk(clk),
    .reset(reset),
    .lfsr_o(lfsr_o)
  );

    always #5 clk = ~clk;  // Clock generation
  initial begin
    clk = 0;
    reset = 0;
    #10 reset = 1;
    #15;
    reset=0;
    #100;
    reset=1;
    #100;
    $finish;
  end

   initial begin
    $dumpfile("day7.vcd");
    $dumpvars(0, day7_tb);
  end

  

endmodule
