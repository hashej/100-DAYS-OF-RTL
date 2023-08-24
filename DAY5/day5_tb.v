module day5_tb();
  reg clk;
  reg reset;
  wire [7:0] cnt_o;

  
  day5 u_day5(
    .clk(clk),
    .reset(reset),
    .cnt_o(cnt_o)
  );

  
  always #5 clk = ~clk;

  initial begin
    clk = 0;
    reset = 0;
    #10 reset = 1;
    #10;
    reset =0;
    #20;
    reset=1;
    $finish;
  end
   initial begin
    $dumpfile("day5.vcd");
    $dumpvars(0, day5_tb);
  end

endmodule
