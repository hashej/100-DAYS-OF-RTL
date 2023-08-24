module day5 (clk,reset,cnt_o);
  input     wire        clk;
  input     wire        reset;

  output    reg[7:0]  cnt_o;

  always @(posedge clk or posedge reset)
    if (reset)
      cnt_o <= 8'h1;
    else
      cnt_o <= cnt_o + 8'h2;

endmodule