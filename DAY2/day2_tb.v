module day2_tb ();
  reg  clk;
  reg  reset;
  reg   d_i;
  wire   q_norst_o;
  wire   q_syncrst_o;
  wire   q_asyncrst_o;

  day2 u_day2 (
    .clk(clk),
    .reset(reset),
    .d_i(d_i),
    .q_norst_o(q_norst_o),
    .q_syncrst_o(q_syncrst_o),
    .q_asyncrst_o(q_asyncrst_o)
  );
    always #10 clk = ~clk;
  initial begin
    clk =0;
    reset = 1'b0;
    d_i = 1'b0;
    #5;
    reset = 1'b1;
    d_i = 1'b1;
    #10;
    reset = 1'b1;
    #5;
    reset = 1'b0;
    #5;
    reset = 1'b0;

    $finish;
  end

  initial begin
    $dumpfile("day2.vcd");
    $dumpvars(0, day2_tb);
  end
  

endmodule