module day3 (clk,reset,a_i,rising_edge_o,falling_edge_o);
  input     wire    clk;
  input     wire    reset;

  input     wire    a_i;

  output    wire    rising_edge_o;
  output    wire    falling_edge_o;

  reg a_ff;

  always @(posedge clk or posedge reset)
    if (reset)
      a_ff <= 1'b0;
    else
      a_ff <= a_i;

  
  assign rising_edge_o = ~a_ff & a_i;

  assign falling_edge_o = a_ff & ~a_i;

endmodule