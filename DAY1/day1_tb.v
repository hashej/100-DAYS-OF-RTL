module day1_tb ();

  reg [7:0] a_i;
  reg [7:0] b_i;
  reg       sel_i;
  wire [7:0] y_o;

  day1 u_day1(
    .a_i(a_i),
    .b_i(b_i),
    .sel_i(sel_i),
    .y_o(y_o)
  );

  initial begin
        a_i = 8'b00000000;
        b_i=8'b00000000;
        sel_i = 0;
        #10;
        a_i = 8'b00000010;
        b_i=8'b00000001;
        sel_i = 1;
        #10;
        sel_i = 0;
        #10;
        $finish;
  end
  

  initial begin
    $dumpfile("day1.vcd");
    $dumpvars(0, day1_tb);
  end

endmodule