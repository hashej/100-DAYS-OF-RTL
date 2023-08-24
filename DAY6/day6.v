module day6(clk,reset,x_i,sr_o);
  input     wire        clk;
  input     wire        reset;
  input     wire        x_i;

  output    reg[3:0]   sr_o;


  always @(posedge clk or posedge reset)
    if (reset)
    sr_o<= 4'h0;
    else
      sr_o <= {sr_o[2:0], x_i};

endmodule