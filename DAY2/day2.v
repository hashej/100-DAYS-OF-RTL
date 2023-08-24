module day2(clk,reset,d_i,q_norst_o,q_asyncrst_o,q_syncrst_o);
  input wire  clk;
  input wire  reset;

  input wire d_i;

  output reg q_norst_o;
  output reg q_syncrst_o;
  output reg q_asyncrst_o;

  always @(posedge clk)
    q_norst_o <= d_i;


  always @(posedge clk)
    if (reset)
      q_syncrst_o <= 1'b0;
    else
      q_syncrst_o <= d_i;

  always @(posedge clk or posedge reset)
    if (reset)
      q_asyncrst_o <= 1'b0;
    else
      q_asyncrst_o <= d_i;

endmodule