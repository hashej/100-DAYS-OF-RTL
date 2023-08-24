// Simple edge detector TB

module day3_tb ();

  reg    clk;
  reg   reset;

  reg    a_i;

  wire    rising_edge_o;
  wire    falling_edge_o;


  day3 u_day3 (
    .clk(clk),
    .reset(reset),
    .a_i(a_i),
    .rising_edge_o(rising_edge_o),
    .falling_edge_o(falling_edge_o)
  );

  always #5 clk = ~clk;
  // Stimulus
  initial begin
    clk=0;
    reset=1'b0;
    a_i=1'b0;
    #5;
    reset=1'b1;
    a_i=1'b1;
    #10;
    reset=1'b0;
    a_i=1'b;
    #15;
    $finish;
  end
    initial begin
    $dumpfile("day3.vcd");
    $dumpvars(0, day3_tb);
  end

endmodule