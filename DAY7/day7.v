module day7 (clk,reset,lfsr_o);
input     wire      clk;
  input     wire      reset;

  output    reg[3:0] lfsr_o;


  always @(posedge clk or posedge reset)
    if (reset)
      lfsr_o <= 4'hA;
    else
      lfsr_o <= {lfsr_o[2:0], lfsr_o[1] ^ lfsr_o[3]};

endmodule