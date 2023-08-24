module day1 (a_i,b_i,sel_i,y_o);
  input   wire [7:0]a_i;
  input   wire [7:0]b_i;
  input   wire  sel_i;
  output  reg  [7:0]y_o;


   always @*
    begin
        if (sel_i == 1'b0) begin
           y_o= a_i;
        end
        else begin
           y_o = a_i;
        end
    end

endmodule